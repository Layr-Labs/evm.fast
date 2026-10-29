import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify725
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body741_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_set_one" [Flapjack.Exp.var Flapjack.VarKind.local "r"]

def body741_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_set_zero"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.const 96#64]]

def body741_2 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_set_zero"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.const 192#64]]

def body741_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body741_4 : Prog (BitVec 64) :=
.seq body741_2 body741_3

def body741_5 : Prog (BitVec 64) :=
.seq body741_1 body741_4

def body741_6 : Prog (BitVec 64) :=
.seq body741_0 body741_5

def body741_7 : Prog (BitVec 64) :=
.seq body741_0 body741_1

def body741_8 : Prog (BitVec 64) :=
.seq body741_7 body741_2

def body741_9 : Prog (BitVec 64) :=
.seq body741_8 body741_3

def originalData741 : Decl (BitVec 64) :=
.function { name := "fp6_set_one", inline := false, exported := false, params := [("r", Flapjack.Shape.one)], body := body741_6, returnShape := (Flapjack.Shape.one) }
def simplifiedData741 : Decl (BitVec 64) :=
.function { name := "fp6_set_one", inline := false, exported := false, params := [("r", Flapjack.Shape.one)], body := body741_9, returnShape := (Flapjack.Shape.one) }
def original741 := Pancake.PanLang.declToHOL originalData741
def simplified741 := Pancake.PanLang.declToHOL simplifiedData741
end InitECandidate.Proofs.FrontendStages.Declarations
