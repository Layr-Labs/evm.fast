import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify105
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body121_0 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte (Flapjack.Exp.var Flapjack.VarKind.local "dst")
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "base", Flapjack.Exp.var Flapjack.VarKind.local "n"])

def body121_1 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 1#64)

def body121_2 : Prog (BitVec 64) :=
.seq body121_0 body121_1

def body121_3 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body121_4 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notLower (Flapjack.Exp.const 55#64) (Flapjack.Exp.var Flapjack.VarKind.local "n")) body121_2 body121_3

def body121_5 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte (Flapjack.Exp.var Flapjack.VarKind.local "dst")
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "base", Flapjack.Exp.const 55#64,
      Flapjack.Exp.var Flapjack.VarKind.local "ll"])

def body121_6 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "rlp_put_be"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "dst", Flapjack.Exp.const 1#64],
    Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.var Flapjack.VarKind.local "ll"]

def body121_7 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.const 1#64, Flapjack.Exp.var Flapjack.VarKind.local "ll"])

def body121_8 : Prog (BitVec 64) :=
.seq body121_6 body121_7

def body121_9 : Prog (BitVec 64) :=
.seq body121_5 body121_8

def body121_10 : Prog (BitVec 64) :=
.decCall ("ll") (Flapjack.Shape.one) ("rlp_be_len") ([Flapjack.Exp.var Flapjack.VarKind.local "n"]) body121_9

def body121_11 : Prog (BitVec 64) :=
.seq body121_4 body121_10

def body121_12 : Prog (BitVec 64) :=
.seq body121_5 body121_6

def body121_13 : Prog (BitVec 64) :=
.seq body121_12 body121_7

def body121_14 : Prog (BitVec 64) :=
.decCall ("ll") (Flapjack.Shape.one) ("rlp_be_len") ([Flapjack.Exp.var Flapjack.VarKind.local "n"]) body121_13

def body121_15 : Prog (BitVec 64) :=
.seq body121_4 body121_14

def originalData121 : Decl (BitVec 64) :=
.function { name := "rlp_write_header", inline := false, exported := false, params := [("dst", Flapjack.Shape.one), ("base", Flapjack.Shape.one), ("n", Flapjack.Shape.one)], body := body121_11, returnShape := (Flapjack.Shape.one) }
def simplifiedData121 : Decl (BitVec 64) :=
.function { name := "rlp_write_header", inline := false, exported := false, params := [("dst", Flapjack.Shape.one), ("base", Flapjack.Shape.one), ("n", Flapjack.Shape.one)], body := body121_15, returnShape := (Flapjack.Shape.one) }
def original121 := Pancake.PanLang.declToHOL originalData121
def simplified121 := Pancake.PanLang.declToHOL simplifiedData121
end InitECandidate.Proofs.FrontendStages.Declarations
