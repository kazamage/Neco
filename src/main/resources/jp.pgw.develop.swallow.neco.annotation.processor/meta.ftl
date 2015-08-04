package ${packageName};

//CHECKSTYLE:OFF
import java.util.List;
import java.util.Map;

import jp.pgw.develop.swallow.neco.BeanProperty;
import jp.pgw.develop.swallow.neco.BeanPropertyAccessor;
import ${bean.fullQualifiedName};
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.ImmutableMap.Builder;

/**
 * ${className}.
 */
public class ${className} {
<<#list properties as property>
    /** ${property.name}. */
    public static final BeanProperty<${property.bean.className}, ${property.wrappedType}> ${property.name} = new BeanProperty<${property.bean.className}, ${property.wrappedType}>() {

        /** {@inheritDoc} */
        @Override
        public java.lang.String getName() {
            return "${property.name}";
        }

        /** {@inheritDoc} */
        @Override
        public ${property.wrappedType} apply(${property.bean.className} bean) {
            return bean.${property.readMethodName}();
        }

        /** {@inheritDoc} */
        @Override
        public ${property.bean.className} apply(${property.bean.className} bean, ${property.wrappedType} ${property.name}) {
            bean.${property.writeMethodName}(${property.name});
            return bean;
        }

    };
</#list>
<#list propertyAccessors as propertyAccessor>
    /** ${propertyAccessor.name}. */
    public static final BeanPropertyAccessor<${propertyAccessor.bean.className}, ${propertyAccessor.wrappedType}> ${propertyAccessor.name} = new BeanPropertyAccessor<${propertyAccessor.bean.className}, ${propertyAccessor.wrappedType}>() {

        /** {@inheritDoc} */
        @Override
        public java.lang.String getName() {
            return "${propertyAccessor.name}";
        }

        /** {@inheritDoc} */
        @Override
        public ${propertyAccessor.wrappedType} apply(${propertyAccessor.bean.className} bean) {
            return bean.${propertyAccessor.readMethodName}();
        }

    };
</#list>

}
