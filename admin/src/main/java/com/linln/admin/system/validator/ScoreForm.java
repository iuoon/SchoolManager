package com.linln.admin.system.validator;


import com.linln.admin.system.domain.Score;
import lombok.Data;

import javax.validation.constraints.*;
import java.io.Serializable;

/**
 * @author wuyz
 * @date 2019/03/17
 */
@Data
public class ScoreForm extends Score implements Serializable {

}
