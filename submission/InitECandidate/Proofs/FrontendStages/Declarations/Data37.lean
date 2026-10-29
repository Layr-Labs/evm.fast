import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify21
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body37_0 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "d"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "d", Flapjack.Exp.const 1#64])

def body37_1 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower
  (Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.const 1#64) (Flapjack.Exp.var Flapjack.VarKind.local "d"))
  (Flapjack.Exp.var Flapjack.VarKind.local "n")) body37_0

def body37_2 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "d")

def body37_3 : Prog (BitVec 64) :=
.seq body37_1 body37_2

def body37_4 : Prog (BitVec 64) :=
.dec ("d") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body37_3

def originalData37 : Decl (BitVec 64) :=
.function { name := "ceil_log2", inline := false, exported := false, params := [("n", Flapjack.Shape.one)], body := body37_4, returnShape := (Flapjack.Shape.one) }
def simplifiedData37 : Decl (BitVec 64) :=
.function { name := "ceil_log2", inline := false, exported := false, params := [("n", Flapjack.Shape.one)], body := body37_4, returnShape := (Flapjack.Shape.one) }
def original37 := Pancake.PanLang.declToHOL originalData37
def simplified37 := Pancake.PanLang.declToHOL simplifiedData37
end InitECandidate.Proofs.FrontendStages.Declarations
