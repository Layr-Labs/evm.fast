import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify190
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body206_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "ssz_fail" [Flapjack.Exp.const 60#64]

def body206_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body206_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "len") (Flapjack.Exp.const 20#64)) body206_0 body206_1

def body206_3 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "ssz_offs",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 8#64]])
  (Flapjack.Exp.op Flapjack.BinOp.or
    [Flapjack.Exp.loadByte
        (Flapjack.Exp.op Flapjack.BinOp.add
          [Flapjack.Exp.var Flapjack.VarKind.local "p",
            Flapjack.Exp.panOp Flapjack.PanOp.mul
              [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 4#64]]),
      Flapjack.Exp.shift Flapjack.Shift.lsl
        (Flapjack.Exp.loadByte
          (Flapjack.Exp.op Flapjack.BinOp.add
            [Flapjack.Exp.var Flapjack.VarKind.local "p",
              Flapjack.Exp.panOp Flapjack.PanOp.mul
                [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 4#64],
              Flapjack.Exp.const 1#64]))
        (Flapjack.Exp.const 8#64),
      Flapjack.Exp.shift Flapjack.Shift.lsl
        (Flapjack.Exp.loadByte
          (Flapjack.Exp.op Flapjack.BinOp.add
            [Flapjack.Exp.var Flapjack.VarKind.local "p",
              Flapjack.Exp.panOp Flapjack.PanOp.mul
                [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 4#64],
              Flapjack.Exp.const 2#64]))
        (Flapjack.Exp.const 16#64),
      Flapjack.Exp.shift Flapjack.Shift.lsl
        (Flapjack.Exp.loadByte
          (Flapjack.Exp.op Flapjack.BinOp.add
            [Flapjack.Exp.var Flapjack.VarKind.local "p",
              Flapjack.Exp.panOp Flapjack.PanOp.mul
                [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 4#64],
              Flapjack.Exp.const 3#64]))
        (Flapjack.Exp.const 24#64)])

def body206_4 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64])

def body206_5 : Prog (BitVec 64) :=
.seq body206_3 body206_4

def body206_6 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "i") (Flapjack.Exp.const 5#64)) body206_5

def body206_7 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "ssz_check_offsets"
  [Flapjack.Exp.var Flapjack.VarKind.global "ssz_offs", Flapjack.Exp.const 5#64, Flapjack.Exp.const 20#64,
    Flapjack.Exp.var Flapjack.VarKind.local "len"]

def body206_8 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "rq", Flapjack.Exp.const 0#64])
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.var Flapjack.VarKind.local "o0"])

def body206_9 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "rq", Flapjack.Exp.const 8#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "n0")

def body206_10 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "rq", Flapjack.Exp.const 16#64])
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.var Flapjack.VarKind.local "o1"])

def body206_11 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "rq", Flapjack.Exp.const 24#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "n1")

def body206_12 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "rq", Flapjack.Exp.const 32#64])
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.var Flapjack.VarKind.local "o2"])

def body206_13 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "rq", Flapjack.Exp.const 40#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "n2")

def body206_14 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "rq", Flapjack.Exp.const 48#64])
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.var Flapjack.VarKind.local "o3"])

def body206_15 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "rq", Flapjack.Exp.const 56#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "n3")

def body206_16 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "rq", Flapjack.Exp.const 64#64])
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.var Flapjack.VarKind.local "o4"])

def body206_17 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "rq", Flapjack.Exp.const 72#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "n4")

def body206_18 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "rq")

def body206_19 : Prog (BitVec 64) :=
.seq body206_17 body206_18

def body206_20 : Prog (BitVec 64) :=
.seq body206_16 body206_19

def body206_21 : Prog (BitVec 64) :=
.seq body206_15 body206_20

def body206_22 : Prog (BitVec 64) :=
.seq body206_14 body206_21

def body206_23 : Prog (BitVec 64) :=
.seq body206_13 body206_22

def body206_24 : Prog (BitVec 64) :=
.seq body206_12 body206_23

def body206_25 : Prog (BitVec 64) :=
.seq body206_11 body206_24

def body206_26 : Prog (BitVec 64) :=
.seq body206_10 body206_25

def body206_27 : Prog (BitVec 64) :=
.seq body206_9 body206_26

def body206_28 : Prog (BitVec 64) :=
.seq body206_8 body206_27

def body206_29 : Prog (BitVec 64) :=
.decCall ("n4") (Flapjack.Shape.one) ("ssz_fixed_list_count") ([Flapjack.Exp.op Flapjack.BinOp.sub
    [Flapjack.Exp.var Flapjack.VarKind.local "len", Flapjack.Exp.var Flapjack.VarKind.local "o4"],
  Flapjack.Exp.const 68#64, Flapjack.Exp.const 9223372036854775807#64]) body206_28

def body206_30 : Prog (BitVec 64) :=
.decCall ("n3") (Flapjack.Shape.one) ("ssz_fixed_list_count") ([Flapjack.Exp.op Flapjack.BinOp.sub
    [Flapjack.Exp.var Flapjack.VarKind.local "o4", Flapjack.Exp.var Flapjack.VarKind.local "o3"],
  Flapjack.Exp.const 184#64, Flapjack.Exp.const 9223372036854775807#64]) body206_29

def body206_31 : Prog (BitVec 64) :=
.decCall ("n2") (Flapjack.Shape.one) ("ssz_fixed_list_count") ([Flapjack.Exp.op Flapjack.BinOp.sub
    [Flapjack.Exp.var Flapjack.VarKind.local "o3", Flapjack.Exp.var Flapjack.VarKind.local "o2"],
  Flapjack.Exp.const 116#64, Flapjack.Exp.const 9223372036854775807#64]) body206_30

def body206_32 : Prog (BitVec 64) :=
.decCall ("n1") (Flapjack.Shape.one) ("ssz_fixed_list_count") ([Flapjack.Exp.op Flapjack.BinOp.sub
    [Flapjack.Exp.var Flapjack.VarKind.local "o2", Flapjack.Exp.var Flapjack.VarKind.local "o1"],
  Flapjack.Exp.const 76#64, Flapjack.Exp.const 9223372036854775807#64]) body206_31

def body206_33 : Prog (BitVec 64) :=
.decCall ("n0") (Flapjack.Shape.one) ("ssz_fixed_list_count") ([Flapjack.Exp.op Flapjack.BinOp.sub
    [Flapjack.Exp.var Flapjack.VarKind.local "o1", Flapjack.Exp.var Flapjack.VarKind.local "o0"],
  Flapjack.Exp.const 192#64, Flapjack.Exp.const 9223372036854775807#64]) body206_32

def body206_34 : Prog (BitVec 64) :=
.dec ("o4") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ssz_offs", Flapjack.Exp.const 32#64])) body206_33

def body206_35 : Prog (BitVec 64) :=
.dec ("o3") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ssz_offs", Flapjack.Exp.const 24#64])) body206_34

def body206_36 : Prog (BitVec 64) :=
.dec ("o2") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ssz_offs", Flapjack.Exp.const 16#64])) body206_35

def body206_37 : Prog (BitVec 64) :=
.dec ("o1") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ssz_offs", Flapjack.Exp.const 8#64])) body206_36

def body206_38 : Prog (BitVec 64) :=
.dec ("o0") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one (Flapjack.Exp.var Flapjack.VarKind.global "ssz_offs")) body206_37

def body206_39 : Prog (BitVec 64) :=
.decCall ("rq") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 80#64]) body206_38

def body206_40 : Prog (BitVec 64) :=
.seq body206_7 body206_39

def body206_41 : Prog (BitVec 64) :=
.seq body206_6 body206_40

def body206_42 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body206_41

def body206_43 : Prog (BitVec 64) :=
.seq body206_2 body206_42

def body206_44 : Prog (BitVec 64) :=
.seq body206_6 body206_7

def body206_45 : Prog (BitVec 64) :=
.seq body206_8 body206_9

def body206_46 : Prog (BitVec 64) :=
.seq body206_45 body206_10

def body206_47 : Prog (BitVec 64) :=
.seq body206_46 body206_11

def body206_48 : Prog (BitVec 64) :=
.seq body206_47 body206_12

def body206_49 : Prog (BitVec 64) :=
.seq body206_48 body206_13

def body206_50 : Prog (BitVec 64) :=
.seq body206_49 body206_14

def body206_51 : Prog (BitVec 64) :=
.seq body206_50 body206_15

def body206_52 : Prog (BitVec 64) :=
.seq body206_51 body206_16

def body206_53 : Prog (BitVec 64) :=
.seq body206_52 body206_17

def body206_54 : Prog (BitVec 64) :=
.seq body206_53 body206_18

def body206_55 : Prog (BitVec 64) :=
.decCall ("n4") (Flapjack.Shape.one) ("ssz_fixed_list_count") ([Flapjack.Exp.op Flapjack.BinOp.sub
    [Flapjack.Exp.var Flapjack.VarKind.local "len", Flapjack.Exp.var Flapjack.VarKind.local "o4"],
  Flapjack.Exp.const 68#64, Flapjack.Exp.const 9223372036854775807#64]) body206_54

def body206_56 : Prog (BitVec 64) :=
.decCall ("n3") (Flapjack.Shape.one) ("ssz_fixed_list_count") ([Flapjack.Exp.op Flapjack.BinOp.sub
    [Flapjack.Exp.var Flapjack.VarKind.local "o4", Flapjack.Exp.var Flapjack.VarKind.local "o3"],
  Flapjack.Exp.const 184#64, Flapjack.Exp.const 9223372036854775807#64]) body206_55

def body206_57 : Prog (BitVec 64) :=
.decCall ("n2") (Flapjack.Shape.one) ("ssz_fixed_list_count") ([Flapjack.Exp.op Flapjack.BinOp.sub
    [Flapjack.Exp.var Flapjack.VarKind.local "o3", Flapjack.Exp.var Flapjack.VarKind.local "o2"],
  Flapjack.Exp.const 116#64, Flapjack.Exp.const 9223372036854775807#64]) body206_56

def body206_58 : Prog (BitVec 64) :=
.decCall ("n1") (Flapjack.Shape.one) ("ssz_fixed_list_count") ([Flapjack.Exp.op Flapjack.BinOp.sub
    [Flapjack.Exp.var Flapjack.VarKind.local "o2", Flapjack.Exp.var Flapjack.VarKind.local "o1"],
  Flapjack.Exp.const 76#64, Flapjack.Exp.const 9223372036854775807#64]) body206_57

def body206_59 : Prog (BitVec 64) :=
.decCall ("n0") (Flapjack.Shape.one) ("ssz_fixed_list_count") ([Flapjack.Exp.op Flapjack.BinOp.sub
    [Flapjack.Exp.var Flapjack.VarKind.local "o1", Flapjack.Exp.var Flapjack.VarKind.local "o0"],
  Flapjack.Exp.const 192#64, Flapjack.Exp.const 9223372036854775807#64]) body206_58

def body206_60 : Prog (BitVec 64) :=
.dec ("o4") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ssz_offs", Flapjack.Exp.const 32#64])) body206_59

def body206_61 : Prog (BitVec 64) :=
.dec ("o3") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ssz_offs", Flapjack.Exp.const 24#64])) body206_60

def body206_62 : Prog (BitVec 64) :=
.dec ("o2") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ssz_offs", Flapjack.Exp.const 16#64])) body206_61

def body206_63 : Prog (BitVec 64) :=
.dec ("o1") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ssz_offs", Flapjack.Exp.const 8#64])) body206_62

def body206_64 : Prog (BitVec 64) :=
.dec ("o0") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one (Flapjack.Exp.var Flapjack.VarKind.global "ssz_offs")) body206_63

def body206_65 : Prog (BitVec 64) :=
.decCall ("rq") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 80#64]) body206_64

def body206_66 : Prog (BitVec 64) :=
.seq body206_44 body206_65

def body206_67 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body206_66

def body206_68 : Prog (BitVec 64) :=
.seq body206_2 body206_67

def originalData206 : Decl (BitVec 64) :=
.function { name := "decode_requests", inline := false, exported := false, params := [("p", Flapjack.Shape.one), ("len", Flapjack.Shape.one)], body := body206_43, returnShape := (Flapjack.Shape.one) }
def simplifiedData206 : Decl (BitVec 64) :=
.function { name := "decode_requests", inline := false, exported := false, params := [("p", Flapjack.Shape.one), ("len", Flapjack.Shape.one)], body := body206_68, returnShape := (Flapjack.Shape.one) }
def original206 := Pancake.PanLang.declToHOL originalData206
def simplified206 := Pancake.PanLang.declToHOL simplifiedData206
end InitECandidate.Proofs.FrontendStages.Declarations
