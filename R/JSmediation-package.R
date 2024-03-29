#' @title JSmediation
#'
#' @name JSmediation-package
#' @aliases JSmediation
#'
#' @description A set of functions to conduct joint-significance tests for
#'  mediation analysis.
#'
#' @details The main functions of the JSmediation package follow an
#'   `mdt_*` pattern. `mdt_*` family functions allow you to conduct
#'   joint-significance tests for various mediation models (see Judd, Yzerbyt, &
#'   Muller, 2014; Muller, Judd, & Yzerbyt, 2005; Yzerbyt, Muller, Batailler, &
#'   Judd, 2018).
#'
#'   The syntax for `mdt_*` family functions is usually the same. The first
#'   argument is always a data frame (`data`) which is followed by the
#'   variable names involved in the model (e.g., DV, IV). Because `mdt_*`
#'   family functions use non-standard evaluation, these variable names must
#'   generally be specified unquoted.
#'
#'   `mdt_*` family functions allow you to create an object of class
#'   `"mediation_model"` for which various methods are implemented. The
#'   [`add_index`] method computes the (moderated) indirect effect
#'   index using Monte Carlo for the different mediation models
#'   JSmediation offers.
#'
#'   See `vignette("jsmediation")` for a general introduction and overview
#'   of JSmediation.
#'
#' @references Muller, D., Judd, C. M., & Yzerbyt, V. Y. (2005). When moderation
#'   is mediated and mediation is moderated. *Journal of Personality and
#'   Social Psychology*, *89*(6), 852–863. doi: 10.1037/0022-3514.89.6.852
#'
#'   Judd, C. M., Yzerbyt, V. Y., & Muller, D. (2014). *Mediation and
#'   Moderation*. In H. T. Reis & C. M. Judd (Eds.), Handbook of Research
#'   Methods in Social and Personality Psychology (2nd ed., pp. 653–676). New
#'   York: Cambridge University Press.
#'
#'   Yzerbyt, V., Muller, D., Batailler, C., & Judd, C. M. (2018). New
#'   recommendations for testing indirect effects in mediational models: The
#'   need to report and test component paths. *Journal of Personality and
#'   Social Psychology*, *115*(6), 929–943. doi: 10.1037/pspa0000132
#' @keywords internal
"_PACKAGE"
