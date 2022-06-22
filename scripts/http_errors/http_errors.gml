function http_errors(argument0) 
{
	//Return HTTP error as a string
	switch(argument0)
	{
	//4xx errors (Client)
	case 400: return "Bad Request"; break;
	case 401: return "Unauthorized"; break;
	case 402: return "Payment Required"; break;
	case 403: return "Forbidden"; break;
	case 404: return "Not Found"; break;
	case 405: return "Method Not Allowed"; break;
	case 406: return "Not Acceptable"; break;
	case 407: return "Proxy Authentication Required"; break;
	case 408: return "Request Timeout"; break;
	case 409: return "Conflict"; break;
	case 410: return "Gone"; break;
	case 411: return "Length Required"; break;
	case 412: return "Precondition Failed"; break;
	case 413: return "Request Entity Too Large"; break;
	case 414: return "Request-URI Too Long"; break;
	case 415: return "Unsupported Media Type"; break;
	case 416: return "Requested Range Not Satisfiable"; break;
	case 417: return "Expectation Failed"; break;
	case 418: return "I'm a teapot"; break;
	case 419: return "Authentication Timeout"; break;
	case 420: return "Method Failure"; break;
	case 422: return "Unprocessable Entity"; break;
	case 423: return "Locked"; break;
	case 424: return "Failed Dependency"; break;
	case 426: return "Upgrade Required"; break;
	case 428: return "Precondition Required"; break;
	case 429: return "Too Many Requests"; break;
	case 431: return "Request Header Fields Too Large"; break;
	case 440: return "Login Timeout"; break;
	case 444: return "No Response"; break;
	case 449: return "Retry With"; break;
	case 450: return "Blocked by Windows Parental Controls"; break;
	case 451: return "Unavailable For Legal Reasons"; break;
	case 456: return "	Unrecoverable Error"; break;
	case 494: return "Request Header Too Large"; break;
	case 495: return "Cert Error"; break;
	case 496: return "No Cert"; break;
	case 497: return "HTTP to HTTPS"; break;
	case 498: return "Token expired/invalid"; break;
	case 499: return "Client Closed Request"; break;
	//5xx errors (Server)
	case 500: return "Internal Server Error"; break;
	case 501: return "Not Implemented"; break;
	case 502: return "Bad Gateway"; break;
	case 503: return "Service Unavailable"; break;
	case 504: return "Gateway Timeout"; break;
	case 505: return "HTTP Version Not Supported"; break;
	case 506: return "Variant Also Negotiates"; break;
	case 507: return "Insufficient Storage"; break;
	case 508: return "Loop Detected"; break;
	case 509: return "Bandwidth Limit Exceeded"; break;
	case 510: return "Not Extended"; break;
	case 511: return "Network Authentication Required"; break;
	case 520: return "Origin Error"; break;
	case 521: return "Web server is down"; break;
	case 522: return "Connection timed out"; break;
	case 523: return "Proxy Declined Request"; break;
	case 524: return "A timeout occurred"; break;
	case 598: return "Network read timeout error"; break;
	case 599: return "Network connect timeout error"; break;
	default: return "Unknown Error";
	}
}
