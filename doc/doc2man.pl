#!/usr/bin/perl

#$[ = 1;			# set array base to 1
$, = ' ';		# set output field separator
$\ = "\n";		# set output record separator

use Time::localtime;

my @abbr = qw( Jan Feb Mar Apr May Jun Jul Aug Sep Oct Nov Dec );

line: while (<>) {
    chomp;	# strip record separator
    @Fld = split(' ', $_, 9999);
    if (/[:blank:]*[A-Z]+.*(\(CCP4:.*\))/) {
	$now = localtime();
	$year = localtime->year()+1900;
	$month = $abbr[localtime->mon()];
	#$dd = strftime('%b %Y', $now);


	printf ".TH %s \"1\" \"%s %d\"", $Fld[0], $month, $year;
	# print fields 2-NR
	printf "  \"%s %s %s %s\"", $Fld[1], $Fld[2], $Fld[3], $Fld[4];
	printf ((" \"User Commands\"\n"));
	next line;
    }

    if (/^NAME/) {
	printf ((".SH NAME\n"));
	next line;
    }
    if (/^SYNOPSIS/) {
	printf ((".SH SYNOPSIS\n"));
	next line;
    }
    if (/^DESCRIPTION/) {
	printf ((".SH DESCRIPTION\n"));
	next line;
    }
    if (/^KEYWORDED INPUT/) {
	printf ((".SH KEYWORDED INPUT\n"));
	next line;
    }
    if (/^SEE ALSO/) {
	printf ((".SH SEE ALSO\n"));
	next line;
    }
    if (/^AUTHORS/) {
	printf ((".SH AUTHORS\n"));
	next line;
    }
    if (/^EXAMPLE/) {
	printf ((".SH EXAMPLE\n"));
	next line;
    }
    if (/^BUGS/) {
	printf ((".SH BUGS\n"));
	next line;
    }
    if (/\[Keyworded input\]/) {
	printf ((".br\n.RB   [ \"Keyworded input\" ]\n"));
	next line;
    }
    print $_;
}
