import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify11
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body27_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "st_le32"
  [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.var Flapjack.VarKind.local "v"]

def body27_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "st_le32"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 4#64],
    Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "v") (Flapjack.Exp.const 32#64)]

def body27_2 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body27_3 : Prog (BitVec 64) :=
.seq body27_1 body27_2

def body27_4 : Prog (BitVec 64) :=
.seq body27_0 body27_3

def body27_5 : Prog (BitVec 64) :=
.seq body27_0 body27_1

def body27_6 : Prog (BitVec 64) :=
.seq body27_5 body27_2

def originalData27 : Decl (BitVec 64) :=
.function { name := "st_le64", inline := false, exported := false, params := [("p", Flapjack.Shape.one), ("v", Flapjack.Shape.one)], body := body27_4, returnShape := (Flapjack.Shape.one) }
def simplifiedData27 : Decl (BitVec 64) :=
.function { name := "st_le64", inline := false, exported := false, params := [("p", Flapjack.Shape.one), ("v", Flapjack.Shape.one)], body := body27_6, returnShape := (Flapjack.Shape.one) }
def original27 := Pancake.PanLang.declToHOL originalData27
def simplified27 := Pancake.PanLang.declToHOL simplifiedData27
end InitECandidate.Proofs.FrontendStages.Declarations
