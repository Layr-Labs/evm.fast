import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify824
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body840_0 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "sz" (Flapjack.Exp.const 76#64)

def body840_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body840_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "i") (Flapjack.Exp.const 1#64)) body840_0 body840_1

def body840_3 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "sz" (Flapjack.Exp.const 116#64)

def body840_4 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "i") (Flapjack.Exp.const 2#64)) body840_3 body840_1

def body840_5 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "sz" (Flapjack.Exp.const 184#64)

def body840_6 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "i") (Flapjack.Exp.const 3#64)) body840_5 body840_1

def body840_7 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "sz" (Flapjack.Exp.const 68#64)

def body840_8 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "i") (Flapjack.Exp.const 4#64)) body840_7 body840_1

def body840_9 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte (Flapjack.Exp.var Flapjack.VarKind.local "blob") (Flapjack.Exp.var Flapjack.VarKind.local "i")

def body840_10 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "blob", Flapjack.Exp.const 1#64],
    Flapjack.Exp.var Flapjack.VarKind.local "p",
    Flapjack.Exp.panOp Flapjack.PanOp.mul
      [Flapjack.Exp.var Flapjack.VarKind.local "cnt", Flapjack.Exp.var Flapjack.VarKind.local "sz"]]

def body840_11 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "arr",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.const 16#64]])
  (Flapjack.Exp.var Flapjack.VarKind.local "blob")

def body840_12 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "arr",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.const 16#64],
      Flapjack.Exp.const 8#64])
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.panOp Flapjack.PanOp.mul
        [Flapjack.Exp.var Flapjack.VarKind.local "cnt", Flapjack.Exp.var Flapjack.VarKind.local "sz"],
      Flapjack.Exp.const 1#64])

def body840_13 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "n"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.const 1#64])

def body840_14 : Prog (BitVec 64) :=
.seq body840_12 body840_13

def body840_15 : Prog (BitVec 64) :=
.seq body840_11 body840_14

def body840_16 : Prog (BitVec 64) :=
.seq body840_10 body840_15

def body840_17 : Prog (BitVec 64) :=
.seq body840_9 body840_16

def body840_18 : Prog (BitVec 64) :=
.decCall ("blob") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.panOp Flapjack.PanOp.mul
        [Flapjack.Exp.var Flapjack.VarKind.local "cnt", Flapjack.Exp.var Flapjack.VarKind.local "sz"],
      Flapjack.Exp.const 8#64]]) body840_17

def body840_19 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "cnt") (Flapjack.Exp.const 0#64)) body840_18 body840_1

def body840_20 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64])

def body840_21 : Prog (BitVec 64) :=
.seq body840_19 body840_20

def body840_22 : Prog (BitVec 64) :=
.seq body840_8 body840_21

def body840_23 : Prog (BitVec 64) :=
.seq body840_6 body840_22

def body840_24 : Prog (BitVec 64) :=
.seq body840_4 body840_23

def body840_25 : Prog (BitVec 64) :=
.seq body840_2 body840_24

def body840_26 : Prog (BitVec 64) :=
.dec ("sz") (Flapjack.Shape.one) (Flapjack.Exp.const 192#64) body840_25

def body840_27 : Prog (BitVec 64) :=
.dec ("cnt") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "rq", Flapjack.Exp.const 8#64,
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 16#64]])) body840_26

def body840_28 : Prog (BitVec 64) :=
.dec ("p") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "rq", Flapjack.Exp.const 0#64,
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 16#64]])) body840_27

def body840_29 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "i") (Flapjack.Exp.const 5#64)) body840_28

def body840_30 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.rStruct [Flapjack.Exp.var Flapjack.VarKind.local "arr", Flapjack.Exp.var Flapjack.VarKind.local "n"])

def body840_31 : Prog (BitVec 64) :=
.seq body840_29 body840_30

def body840_32 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body840_31

def body840_33 : Prog (BitVec 64) :=
.dec ("n") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body840_32

def body840_34 : Prog (BitVec 64) :=
.decCall ("arr") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 5#64, Flapjack.Exp.const 16#64]]) body840_33

def body840_35 : Prog (BitVec 64) :=
.seq body840_2 body840_4

def body840_36 : Prog (BitVec 64) :=
.seq body840_35 body840_6

def body840_37 : Prog (BitVec 64) :=
.seq body840_36 body840_8

def body840_38 : Prog (BitVec 64) :=
.seq body840_9 body840_10

def body840_39 : Prog (BitVec 64) :=
.seq body840_38 body840_11

def body840_40 : Prog (BitVec 64) :=
.seq body840_39 body840_12

def body840_41 : Prog (BitVec 64) :=
.seq body840_40 body840_13

def body840_42 : Prog (BitVec 64) :=
.decCall ("blob") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.panOp Flapjack.PanOp.mul
        [Flapjack.Exp.var Flapjack.VarKind.local "cnt", Flapjack.Exp.var Flapjack.VarKind.local "sz"],
      Flapjack.Exp.const 8#64]]) body840_41

def body840_43 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "cnt") (Flapjack.Exp.const 0#64)) body840_42 body840_1

def body840_44 : Prog (BitVec 64) :=
.seq body840_37 body840_43

def body840_45 : Prog (BitVec 64) :=
.seq body840_44 body840_20

def body840_46 : Prog (BitVec 64) :=
.dec ("sz") (Flapjack.Shape.one) (Flapjack.Exp.const 192#64) body840_45

def body840_47 : Prog (BitVec 64) :=
.dec ("cnt") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "rq", Flapjack.Exp.const 8#64,
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 16#64]])) body840_46

def body840_48 : Prog (BitVec 64) :=
.dec ("p") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "rq", Flapjack.Exp.const 0#64,
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 16#64]])) body840_47

def body840_49 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "i") (Flapjack.Exp.const 5#64)) body840_48

def body840_50 : Prog (BitVec 64) :=
.seq body840_49 body840_30

def body840_51 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body840_50

def body840_52 : Prog (BitVec 64) :=
.dec ("n") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body840_51

def body840_53 : Prog (BitVec 64) :=
.decCall ("arr") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 5#64, Flapjack.Exp.const 16#64]]) body840_52

def originalData840 : Decl (BitVec 64) :=
.function { name := "encode_execution_requests", inline := false, exported := false, params := [("rq", Flapjack.Shape.one)], body := body840_34, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) }
def simplifiedData840 : Decl (BitVec 64) :=
.function { name := "encode_execution_requests", inline := false, exported := false, params := [("rq", Flapjack.Shape.one)], body := body840_53, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) }
def original840 := Pancake.PanLang.declToHOL originalData840
def simplified840 := Pancake.PanLang.declToHOL simplifiedData840
end InitECandidate.Proofs.FrontendStages.Declarations
