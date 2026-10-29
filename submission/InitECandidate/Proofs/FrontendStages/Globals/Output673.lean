import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data673
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate657
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody673_0 : Prog (BitVec 64) :=
Flapjack.Prog.call none "fe_is_zero"
  [Flapjack.Exp.var Flapjack.VarKind.local "fld",
    Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "pt",
        Flapjack.Exp.panOp Flapjack.PanOp.mul
          [Flapjack.Exp.const 2#64,
            Flapjack.Exp.panOp Flapjack.PanOp.mul
              [Flapjack.Exp.var Flapjack.VarKind.local "fld", Flapjack.Exp.const 32#64]]]]

def globalData673 : Decl (BitVec 64) :=
.function { name := "ecp_is_inf", inline := false, exported := false, params := [("fld", Flapjack.Shape.one), ("pt", Flapjack.Shape.one)], body := globalBody673_0, returnShape := (Flapjack.Shape.one) }
def globalOutput673 := Pancake.PanLang.declToHOL globalData673
end InitECandidate.Proofs.FrontendStages.Declarations
