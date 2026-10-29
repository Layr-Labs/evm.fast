import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify234
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body250_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "mpt_fail" [Flapjack.Exp.const 5#64]

def body250_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body250_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "n") (Flapjack.Exp.const 0#64)) body250_0 body250_1

def body250_3 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte (Flapjack.Exp.var Flapjack.VarKind.local "out")
  (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "c0", Flapjack.Exp.const 15#64])

def body250_4 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "k" (Flapjack.Exp.const 1#64)

def body250_5 : Prog (BitVec 64) :=
.seq body250_3 body250_4

def body250_6 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "odd") (Flapjack.Exp.const 0#64)) body250_5 body250_1

def body250_7 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "key_to_nibbles"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 1#64],
    Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.const 1#64],
    Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.var Flapjack.VarKind.local "k"]]

def body250_8 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.var Flapjack.VarKind.local "out",
      Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.var Flapjack.VarKind.local "k",
          Flapjack.Exp.panOp Flapjack.PanOp.mul
            [Flapjack.Exp.const 2#64,
              Flapjack.Exp.op Flapjack.BinOp.sub
                [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.const 1#64]]],
      Flapjack.Exp.var Flapjack.VarKind.local "is_leaf"])

def body250_9 : Prog (BitVec 64) :=
.seq body250_7 body250_8

def body250_10 : Prog (BitVec 64) :=
.seq body250_6 body250_9

def body250_11 : Prog (BitVec 64) :=
.dec ("k") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body250_10

def body250_12 : Prog (BitVec 64) :=
.decCall ("out") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 2#64, Flapjack.Exp.var Flapjack.VarKind.local "n"]]) body250_11

def body250_13 : Prog (BitVec 64) :=
.dec ("odd") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "first", Flapjack.Exp.const 1#64]) body250_12

def body250_14 : Prog (BitVec 64) :=
.dec ("is_leaf") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and
  [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "first") (Flapjack.Exp.const 1#64),
    Flapjack.Exp.const 1#64]) body250_13

def body250_15 : Prog (BitVec 64) :=
.dec ("first") (Flapjack.Shape.one) (Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "c0") (Flapjack.Exp.const 4#64)) body250_14

def body250_16 : Prog (BitVec 64) :=
.dec ("c0") (Flapjack.Shape.one) (Flapjack.Exp.loadByte (Flapjack.Exp.var Flapjack.VarKind.local "p")) body250_15

def body250_17 : Prog (BitVec 64) :=
.seq body250_2 body250_16

def body250_18 : Prog (BitVec 64) :=
.seq body250_6 body250_7

def body250_19 : Prog (BitVec 64) :=
.seq body250_18 body250_8

def body250_20 : Prog (BitVec 64) :=
.dec ("k") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body250_19

def body250_21 : Prog (BitVec 64) :=
.decCall ("out") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 2#64, Flapjack.Exp.var Flapjack.VarKind.local "n"]]) body250_20

def body250_22 : Prog (BitVec 64) :=
.dec ("odd") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "first", Flapjack.Exp.const 1#64]) body250_21

def body250_23 : Prog (BitVec 64) :=
.dec ("is_leaf") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and
  [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "first") (Flapjack.Exp.const 1#64),
    Flapjack.Exp.const 1#64]) body250_22

def body250_24 : Prog (BitVec 64) :=
.dec ("first") (Flapjack.Shape.one) (Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "c0") (Flapjack.Exp.const 4#64)) body250_23

def body250_25 : Prog (BitVec 64) :=
.dec ("c0") (Flapjack.Shape.one) (Flapjack.Exp.loadByte (Flapjack.Exp.var Flapjack.VarKind.local "p")) body250_24

def body250_26 : Prog (BitVec 64) :=
.seq body250_2 body250_25

def originalData250 : Decl (BitVec 64) :=
.function { name := "compact_to_nibbles", inline := false, exported := false, params := [("p", Flapjack.Shape.one), ("n", Flapjack.Shape.one)], body := body250_17, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) }
def simplifiedData250 : Decl (BitVec 64) :=
.function { name := "compact_to_nibbles", inline := false, exported := false, params := [("p", Flapjack.Shape.one), ("n", Flapjack.Shape.one)], body := body250_26, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) }
def original250 := Pancake.PanLang.declToHOL originalData250
def simplified250 := Pancake.PanLang.declToHOL simplifiedData250
end InitECandidate.Proofs.FrontendStages.Declarations
