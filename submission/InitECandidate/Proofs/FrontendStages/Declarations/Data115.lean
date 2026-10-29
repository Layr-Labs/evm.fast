import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify99
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body115_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 1#64)

def body115_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body115_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "b") (Flapjack.Exp.const 128#64)) body115_0 body115_1

def body115_3 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.op Flapjack.BinOp.sub
    [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.const 1#64, Flapjack.Exp.var Flapjack.VarKind.local "b"],
      Flapjack.Exp.const 128#64])

def body115_4 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notLower (Flapjack.Exp.const 183#64) (Flapjack.Exp.var Flapjack.VarKind.local "b")) body115_3 body115_1

def body115_5 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.const 1#64, Flapjack.Exp.var Flapjack.VarKind.local "ll",
      Flapjack.Exp.var Flapjack.VarKind.local "n"])

def body115_6 : Prog (BitVec 64) :=
.decCall ("n") (Flapjack.Shape.one) ("rlp_read_length") ([Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 1#64],
  Flapjack.Exp.var Flapjack.VarKind.local "ll"]) body115_5

def body115_7 : Prog (BitVec 64) :=
.dec ("ll") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.var Flapjack.VarKind.local "b", Flapjack.Exp.const 183#64]) body115_6

def body115_8 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notLower (Flapjack.Exp.const 191#64) (Flapjack.Exp.var Flapjack.VarKind.local "b")) body115_7 body115_1

def body115_9 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.op Flapjack.BinOp.sub
    [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.const 1#64, Flapjack.Exp.var Flapjack.VarKind.local "b"],
      Flapjack.Exp.const 192#64])

def body115_10 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notLower (Flapjack.Exp.const 247#64) (Flapjack.Exp.var Flapjack.VarKind.local "b")) body115_9 body115_1

def body115_11 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.const 1#64, Flapjack.Exp.var Flapjack.VarKind.local "ll2",
      Flapjack.Exp.var Flapjack.VarKind.local "n2"])

def body115_12 : Prog (BitVec 64) :=
.decCall ("n2") (Flapjack.Shape.one) ("rlp_read_length") ([Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 1#64],
  Flapjack.Exp.var Flapjack.VarKind.local "ll2"]) body115_11

def body115_13 : Prog (BitVec 64) :=
.dec ("ll2") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.var Flapjack.VarKind.local "b", Flapjack.Exp.const 247#64]) body115_12

def body115_14 : Prog (BitVec 64) :=
.seq body115_10 body115_13

def body115_15 : Prog (BitVec 64) :=
.seq body115_8 body115_14

def body115_16 : Prog (BitVec 64) :=
.seq body115_4 body115_15

def body115_17 : Prog (BitVec 64) :=
.seq body115_2 body115_16

def body115_18 : Prog (BitVec 64) :=
.dec ("b") (Flapjack.Shape.one) (Flapjack.Exp.loadByte (Flapjack.Exp.var Flapjack.VarKind.local "p")) body115_17

def body115_19 : Prog (BitVec 64) :=
.seq body115_2 body115_4

def body115_20 : Prog (BitVec 64) :=
.seq body115_19 body115_8

def body115_21 : Prog (BitVec 64) :=
.seq body115_20 body115_10

def body115_22 : Prog (BitVec 64) :=
.seq body115_21 body115_13

def body115_23 : Prog (BitVec 64) :=
.dec ("b") (Flapjack.Shape.one) (Flapjack.Exp.loadByte (Flapjack.Exp.var Flapjack.VarKind.local "p")) body115_22

def originalData115 : Decl (BitVec 64) :=
.function { name := "rlp_item_total_unchecked", inline := false, exported := false, params := [("p", Flapjack.Shape.one)], body := body115_18, returnShape := (Flapjack.Shape.one) }
def simplifiedData115 : Decl (BitVec 64) :=
.function { name := "rlp_item_total_unchecked", inline := false, exported := false, params := [("p", Flapjack.Shape.one)], body := body115_23, returnShape := (Flapjack.Shape.one) }
def original115 := Pancake.PanLang.declToHOL originalData115
def simplified115 := Pancake.PanLang.declToHOL simplifiedData115
end InitECandidate.Proofs.FrontendStages.Declarations
