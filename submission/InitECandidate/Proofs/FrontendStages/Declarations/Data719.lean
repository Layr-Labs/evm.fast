import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify703
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body719_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "st_be64"
  [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.rField 5 (Flapjack.Exp.var Flapjack.VarKind.local "a")]

def body719_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "st_be64"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 8#64],
    Flapjack.Exp.rField 4 (Flapjack.Exp.var Flapjack.VarKind.local "a")]

def body719_2 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "st_be64"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 16#64],
    Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "a")]

def body719_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "st_be64"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 24#64],
    Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "a")]

def body719_4 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "st_be64"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 32#64],
    Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "a")]

def body719_5 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "st_be64"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 40#64],
    Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "a")]

def body719_6 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body719_7 : Prog (BitVec 64) :=
.seq body719_5 body719_6

def body719_8 : Prog (BitVec 64) :=
.seq body719_4 body719_7

def body719_9 : Prog (BitVec 64) :=
.seq body719_3 body719_8

def body719_10 : Prog (BitVec 64) :=
.seq body719_2 body719_9

def body719_11 : Prog (BitVec 64) :=
.seq body719_1 body719_10

def body719_12 : Prog (BitVec 64) :=
.seq body719_0 body719_11

def body719_13 : Prog (BitVec 64) :=
.seq body719_0 body719_1

def body719_14 : Prog (BitVec 64) :=
.seq body719_13 body719_2

def body719_15 : Prog (BitVec 64) :=
.seq body719_14 body719_3

def body719_16 : Prog (BitVec 64) :=
.seq body719_15 body719_4

def body719_17 : Prog (BitVec 64) :=
.seq body719_16 body719_5

def body719_18 : Prog (BitVec 64) :=
.seq body719_17 body719_6

def originalData719 : Decl (BitVec 64) :=
.function { name := "bls_fp_to_be48", inline := false, exported := false, params := [("a",
    Flapjack.Shape.comb
      [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
        Flapjack.Shape.one]),
  ("out", Flapjack.Shape.one)], body := body719_12, returnShape := (Flapjack.Shape.one) }
def simplifiedData719 : Decl (BitVec 64) :=
.function { name := "bls_fp_to_be48", inline := false, exported := false, params := [("a",
    Flapjack.Shape.comb
      [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
        Flapjack.Shape.one]),
  ("out", Flapjack.Shape.one)], body := body719_18, returnShape := (Flapjack.Shape.one) }
def original719 := Pancake.PanLang.declToHOL originalData719
def simplified719 := Pancake.PanLang.declToHOL simplifiedData719
end InitECandidate.Proofs.FrontendStages.Declarations
