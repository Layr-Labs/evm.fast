import InitECandidate.Proofs.FrontendStages.Declarations.Data851
import InitECandidate.Proofs.FrontendStages.Globals.Context
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody851_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 519#64)

def globalBody851_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody851_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.const 128#64) (Flapjack.Exp.var Flapjack.VarKind.local "k")) globalBody851_0 globalBody851_1

def globalBody851_3 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.load Flapjack.Shape.one
          (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 608#64]),
        Flapjack.Exp.panOp Flapjack.PanOp.mul
          [Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.var Flapjack.VarKind.local "k", Flapjack.Exp.const 1#64],
            Flapjack.Exp.const 8#64]]))

def globalBody851_4 : Prog (BitVec 64) :=
.seq globalBody851_2 globalBody851_3

def globalData851 : Decl (BitVec 64) := .function { name := "bls_g1_msm_discount", inline := false, exported := false, params := [("k", Flapjack.Shape.one)], body := globalBody851_4, returnShape := (Flapjack.Shape.one) }
def globalOutput851 := Pancake.PanLang.declToHOL globalData851
end InitECandidate.Proofs.FrontendStages.Declarations
