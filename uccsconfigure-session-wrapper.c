#include <stdlib.h>
#include <unistd.h>

int
main (int argc, char * argv[])
{
	char * args[2];
	args[0] = PKGDATADIR "/uccsconfigure-session";
	args[1] = NULL;

	execvp(args[0], args);

	return 0;
}
