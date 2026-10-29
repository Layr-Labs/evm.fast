import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify755
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body771_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_set_one" [Flapjack.Exp.var Flapjack.VarKind.local "r"]

def body771_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_set_one"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.const 96#64]]

def body771_2 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_set_zero"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.const 192#64]]

def body771_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body771_4 : Prog (BitVec 64) :=
.seq body771_2 body771_3

def body771_5 : Prog (BitVec 64) :=
.seq body771_1 body771_4

def body771_6 : Prog (BitVec 64) :=
.seq body771_0 body771_5

def body771_7 : Prog (BitVec 64) :=
.seq body771_0 body771_1

def body771_8 : Prog (BitVec 64) :=
.seq body771_7 body771_2

def body771_9 : Prog (BitVec 64) :=
.seq body771_8 body771_3

def originalData771 : Decl (BitVec 64) :=
.function { name := "g2_set_inf", inline := false, exported := false, params := [("r", Flapjack.Shape.one)], body := body771_6, returnShape := (Flapjack.Shape.one) }
def simplifiedData771 : Decl (BitVec 64) :=
.function { name := "g2_set_inf", inline := false, exported := false, params := [("r", Flapjack.Shape.one)], body := body771_9, returnShape := (Flapjack.Shape.one) }
def original771 := Pancake.PanLang.declToHOL originalData771
def simplified771 := Pancake.PanLang.declToHOL simplifiedData771
end InitECandidate.Proofs.FrontendStages.Declarations
