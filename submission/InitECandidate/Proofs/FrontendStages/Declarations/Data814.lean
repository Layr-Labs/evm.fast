import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify798
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body814_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 524#64)

def body814_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body814_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.const 128#64) (Flapjack.Exp.var Flapjack.VarKind.local "k")) body814_0 body814_1

def body814_3 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount",
        Flapjack.Exp.panOp Flapjack.PanOp.mul
          [Flapjack.Exp.op Flapjack.BinOp.sub
              [Flapjack.Exp.op Flapjack.BinOp.add
                  [Flapjack.Exp.const 128#64, Flapjack.Exp.var Flapjack.VarKind.local "k"],
                Flapjack.Exp.const 1#64],
            Flapjack.Exp.const 8#64]]))

def body814_4 : Prog (BitVec 64) :=
.seq body814_2 body814_3

def originalData814 : Decl (BitVec 64) :=
.function { name := "bls_g2_msm_discount", inline := false, exported := false, params := [("k", Flapjack.Shape.one)], body := body814_4, returnShape := (Flapjack.Shape.one) }
def simplifiedData814 : Decl (BitVec 64) :=
.function { name := "bls_g2_msm_discount", inline := false, exported := false, params := [("k", Flapjack.Shape.one)], body := body814_4, returnShape := (Flapjack.Shape.one) }
def original814 := Pancake.PanLang.declToHOL originalData814
def simplified814 := Pancake.PanLang.declToHOL simplifiedData814
end InitECandidate.Proofs.FrontendStages.Declarations
