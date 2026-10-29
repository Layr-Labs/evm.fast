import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify173
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body189_0 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "cnt" (Flapjack.Exp.var Flapjack.VarKind.local "size")

def body189_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body189_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "size")
  (Flapjack.Exp.var Flapjack.VarKind.local "cnt")) body189_0 body189_1

def body189_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "merkleize"
  [Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "p",
        Flapjack.Exp.panOp Flapjack.PanOp.mul
          [Flapjack.Exp.var Flapjack.VarKind.local "off", Flapjack.Exp.const 32#64]],
    Flapjack.Exp.var Flapjack.VarKind.local "cnt", Flapjack.Exp.var Flapjack.VarKind.local "size",
    Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "roots",
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "k", Flapjack.Exp.const 32#64]]]

def body189_4 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "off"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "off", Flapjack.Exp.var Flapjack.VarKind.local "size"])

def body189_5 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "size"
  (Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "size") (Flapjack.Exp.const 2#64))

def body189_6 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "k"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "k", Flapjack.Exp.const 1#64])

def body189_7 : Prog (BitVec 64) :=
.seq body189_5 body189_6

def body189_8 : Prog (BitVec 64) :=
.seq body189_4 body189_7

def body189_9 : Prog (BitVec 64) :=
.seq body189_3 body189_8

def body189_10 : Prog (BitVec 64) :=
.seq body189_2 body189_9

def body189_11 : Prog (BitVec 64) :=
.dec ("cnt") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub
  [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.var Flapjack.VarKind.local "off"]) body189_10

def body189_12 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "off")
  (Flapjack.Exp.var Flapjack.VarKind.local "n")) body189_11

def body189_13 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memzero"
  [Flapjack.Exp.var Flapjack.VarKind.local "acc", Flapjack.Exp.const 32#64]

def body189_14 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "k"
  (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.var Flapjack.VarKind.local "k", Flapjack.Exp.const 1#64])

def body189_15 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "sha256_pair"
  [Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "roots",
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "k", Flapjack.Exp.const 32#64]],
    Flapjack.Exp.var Flapjack.VarKind.local "acc", Flapjack.Exp.var Flapjack.VarKind.local "acc"]

def body189_16 : Prog (BitVec 64) :=
.seq body189_14 body189_15

def body189_17 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "k") (Flapjack.Exp.const 0#64)) body189_16

def body189_18 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.var Flapjack.VarKind.local "acc",
    Flapjack.Exp.const 32#64]

def body189_19 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "heap_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"]

def body189_20 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body189_21 : Prog (BitVec 64) :=
.seq body189_19 body189_20

def body189_22 : Prog (BitVec 64) :=
.seq body189_18 body189_21

def body189_23 : Prog (BitVec 64) :=
.seq body189_17 body189_22

def body189_24 : Prog (BitVec 64) :=
.seq body189_13 body189_23

def body189_25 : Prog (BitVec 64) :=
.seq body189_12 body189_24

def body189_26 : Prog (BitVec 64) :=
.dec ("size") (Flapjack.Shape.one) (Flapjack.Exp.const 1#64) body189_25

def body189_27 : Prog (BitVec 64) :=
.dec ("off") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body189_26

def body189_28 : Prog (BitVec 64) :=
.dec ("k") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body189_27

def body189_29 : Prog (BitVec 64) :=
.decCall ("acc") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 32#64]) body189_28

def body189_30 : Prog (BitVec 64) :=
.decCall ("roots") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 24#64, Flapjack.Exp.const 32#64]]) body189_29

def body189_31 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) body189_30

def body189_32 : Prog (BitVec 64) :=
.seq body189_2 body189_3

def body189_33 : Prog (BitVec 64) :=
.seq body189_32 body189_4

def body189_34 : Prog (BitVec 64) :=
.seq body189_33 body189_5

def body189_35 : Prog (BitVec 64) :=
.seq body189_34 body189_6

def body189_36 : Prog (BitVec 64) :=
.dec ("cnt") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub
  [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.var Flapjack.VarKind.local "off"]) body189_35

def body189_37 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "off")
  (Flapjack.Exp.var Flapjack.VarKind.local "n")) body189_36

def body189_38 : Prog (BitVec 64) :=
.seq body189_37 body189_13

def body189_39 : Prog (BitVec 64) :=
.seq body189_38 body189_17

def body189_40 : Prog (BitVec 64) :=
.seq body189_39 body189_18

def body189_41 : Prog (BitVec 64) :=
.seq body189_40 body189_19

def body189_42 : Prog (BitVec 64) :=
.seq body189_41 body189_20

def body189_43 : Prog (BitVec 64) :=
.dec ("size") (Flapjack.Shape.one) (Flapjack.Exp.const 1#64) body189_42

def body189_44 : Prog (BitVec 64) :=
.dec ("off") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body189_43

def body189_45 : Prog (BitVec 64) :=
.dec ("k") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body189_44

def body189_46 : Prog (BitVec 64) :=
.decCall ("acc") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 32#64]) body189_45

def body189_47 : Prog (BitVec 64) :=
.decCall ("roots") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 24#64, Flapjack.Exp.const 32#64]]) body189_46

def body189_48 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) body189_47

def originalData189 : Decl (BitVec 64) :=
.function { name := "merkleize_progressive", inline := false, exported := false, params := [("p", Flapjack.Shape.one), ("n", Flapjack.Shape.one), ("out", Flapjack.Shape.one)], body := body189_31, returnShape := (Flapjack.Shape.one) }
def simplifiedData189 : Decl (BitVec 64) :=
.function { name := "merkleize_progressive", inline := false, exported := false, params := [("p", Flapjack.Shape.one), ("n", Flapjack.Shape.one), ("out", Flapjack.Shape.one)], body := body189_48, returnShape := (Flapjack.Shape.one) }
def original189 := Pancake.PanLang.declToHOL originalData189
def simplified189 := Pancake.PanLang.declToHOL simplifiedData189
end InitECandidate.Proofs.FrontendStages.Declarations
