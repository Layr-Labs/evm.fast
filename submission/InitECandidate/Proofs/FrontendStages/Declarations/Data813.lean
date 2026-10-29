import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify797
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body813_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 519#64)

def body813_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body813_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.const 128#64) (Flapjack.Exp.var Flapjack.VarKind.local "k")) body813_0 body813_1

def body813_3 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount",
        Flapjack.Exp.panOp Flapjack.PanOp.mul
          [Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.var Flapjack.VarKind.local "k", Flapjack.Exp.const 1#64],
            Flapjack.Exp.const 8#64]]))

def body813_4 : Prog (BitVec 64) :=
.seq body813_2 body813_3

def originalData813 : Decl (BitVec 64) :=
.function { name := "bls_g1_msm_discount", inline := false, exported := false, params := [("k", Flapjack.Shape.one)], body := body813_4, returnShape := (Flapjack.Shape.one) }
def simplifiedData813 : Decl (BitVec 64) :=
.function { name := "bls_g1_msm_discount", inline := false, exported := false, params := [("k", Flapjack.Shape.one)], body := body813_4, returnShape := (Flapjack.Shape.one) }
def original813 := Pancake.PanLang.declToHOL originalData813
def simplified813 := Pancake.PanLang.declToHOL simplifiedData813
end InitECandidate.Proofs.FrontendStages.Declarations
