package br.com.tecnoone.app.exception;

public class UnauthorizedException extends RuntimeException {

	private static final long serialVersionUID = -1051347452353244483L;

	public UnauthorizedException() {
		super();
	}

	public UnauthorizedException(String message, Throwable cause,
			boolean enableSuppression, boolean writableStackTrace) {
		super(message, cause, enableSuppression, writableStackTrace);
	}

	public UnauthorizedException(String message, Throwable cause) {
		super(message, cause);
	}

	public UnauthorizedException(String message) {
		super(message);
	}

	public UnauthorizedException(Throwable cause) {
		super(cause);
	}
}
