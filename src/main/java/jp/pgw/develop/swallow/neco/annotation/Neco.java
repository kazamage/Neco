package jp.pgw.develop.swallow.neco.annotation;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/**
 * Neco Java Beans !
 */
@Retention(RetentionPolicy.CLASS)
@Target(ElementType.TYPE)
public @interface Neco {
}
