import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify883
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body899_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "st_be32"
  [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.var Flapjack.VarKind.local "hi4"]

def body899_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "st_be64"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 4#64],
    Flapjack.Exp.var Flapjack.VarKind.local "mid8"]

def body899_2 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "st_be64"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 12#64],
    Flapjack.Exp.var Flapjack.VarKind.local "lo8"]

def body899_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body899_4 : Prog (BitVec 64) :=
.seq body899_2 body899_3

def body899_5 : Prog (BitVec 64) :=
.seq body899_1 body899_4

def body899_6 : Prog (BitVec 64) :=
.seq body899_0 body899_5

def body899_7 : Prog (BitVec 64) :=
.seq body899_0 body899_1

def body899_8 : Prog (BitVec 64) :=
.seq body899_7 body899_2

def body899_9 : Prog (BitVec 64) :=
.seq body899_8 body899_3

def originalData899 : Decl (BitVec 64) :=
.function { name := "addr_from_words", inline := false, exported := false, params := [("out", Flapjack.Shape.one), ("hi4", Flapjack.Shape.one), ("mid8", Flapjack.Shape.one), ("lo8", Flapjack.Shape.one)], body := body899_6, returnShape := (Flapjack.Shape.one) }
def simplifiedData899 : Decl (BitVec 64) :=
.function { name := "addr_from_words", inline := false, exported := false, params := [("out", Flapjack.Shape.one), ("hi4", Flapjack.Shape.one), ("mid8", Flapjack.Shape.one), ("lo8", Flapjack.Shape.one)], body := body899_9, returnShape := (Flapjack.Shape.one) }
def original899 := Pancake.PanLang.declToHOL originalData899
def simplified899 := Pancake.PanLang.declToHOL simplifiedData899
end InitECandidate.Proofs.FrontendStages.Declarations
