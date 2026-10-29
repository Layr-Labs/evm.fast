import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify845
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body861_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "st_be32"
  [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.var Flapjack.VarKind.local "hi4"]

def body861_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "st_be64"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 4#64],
    Flapjack.Exp.var Flapjack.VarKind.local "mid8"]

def body861_2 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "st_be64"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 12#64],
    Flapjack.Exp.var Flapjack.VarKind.local "lo8"]

def body861_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body861_4 : Prog (BitVec 64) :=
.seq body861_2 body861_3

def body861_5 : Prog (BitVec 64) :=
.seq body861_1 body861_4

def body861_6 : Prog (BitVec 64) :=
.seq body861_0 body861_5

def body861_7 : Prog (BitVec 64) :=
.seq body861_0 body861_1

def body861_8 : Prog (BitVec 64) :=
.seq body861_7 body861_2

def body861_9 : Prog (BitVec 64) :=
.seq body861_8 body861_3

def originalData861 : Decl (BitVec 64) :=
.function { name := "addr_from_words", inline := false, exported := false, params := [("out", Flapjack.Shape.one), ("hi4", Flapjack.Shape.one), ("mid8", Flapjack.Shape.one), ("lo8", Flapjack.Shape.one)], body := body861_6, returnShape := (Flapjack.Shape.one) }
def simplifiedData861 : Decl (BitVec 64) :=
.function { name := "addr_from_words", inline := false, exported := false, params := [("out", Flapjack.Shape.one), ("hi4", Flapjack.Shape.one), ("mid8", Flapjack.Shape.one), ("lo8", Flapjack.Shape.one)], body := body861_9, returnShape := (Flapjack.Shape.one) }
def original861 := Pancake.PanLang.declToHOL originalData861
def simplified861 := Pancake.PanLang.declToHOL simplifiedData861
end InitECandidate.Proofs.FrontendStages.Declarations
