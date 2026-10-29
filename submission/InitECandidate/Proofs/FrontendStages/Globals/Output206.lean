import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data206
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate190
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody206_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "ssz_fail" [Flapjack.Exp.const 60#64]

def globalBody206_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody206_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "len") (Flapjack.Exp.const 20#64)) globalBody206_0 globalBody206_1

def globalBody206_3 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 112#64]),
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

def globalBody206_4 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64])

def globalBody206_5 : Prog (BitVec 64) :=
.seq globalBody206_3 globalBody206_4

def globalBody206_6 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "i") (Flapjack.Exp.const 5#64)) globalBody206_5

def globalBody206_7 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "ssz_check_offsets"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 112#64]),
    Flapjack.Exp.const 5#64, Flapjack.Exp.const 20#64, Flapjack.Exp.var Flapjack.VarKind.local "len"]

def globalBody206_8 : Prog (BitVec 64) :=
.seq globalBody206_6 globalBody206_7

def globalBody206_9 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "rq", Flapjack.Exp.const 0#64])
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.var Flapjack.VarKind.local "o0"])

def globalBody206_10 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "rq", Flapjack.Exp.const 8#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "n0")

def globalBody206_11 : Prog (BitVec 64) :=
.seq globalBody206_9 globalBody206_10

def globalBody206_12 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "rq", Flapjack.Exp.const 16#64])
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.var Flapjack.VarKind.local "o1"])

def globalBody206_13 : Prog (BitVec 64) :=
.seq globalBody206_11 globalBody206_12

def globalBody206_14 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "rq", Flapjack.Exp.const 24#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "n1")

def globalBody206_15 : Prog (BitVec 64) :=
.seq globalBody206_13 globalBody206_14

def globalBody206_16 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "rq", Flapjack.Exp.const 32#64])
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.var Flapjack.VarKind.local "o2"])

def globalBody206_17 : Prog (BitVec 64) :=
.seq globalBody206_15 globalBody206_16

def globalBody206_18 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "rq", Flapjack.Exp.const 40#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "n2")

def globalBody206_19 : Prog (BitVec 64) :=
.seq globalBody206_17 globalBody206_18

def globalBody206_20 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "rq", Flapjack.Exp.const 48#64])
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.var Flapjack.VarKind.local "o3"])

def globalBody206_21 : Prog (BitVec 64) :=
.seq globalBody206_19 globalBody206_20

def globalBody206_22 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "rq", Flapjack.Exp.const 56#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "n3")

def globalBody206_23 : Prog (BitVec 64) :=
.seq globalBody206_21 globalBody206_22

def globalBody206_24 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "rq", Flapjack.Exp.const 64#64])
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.var Flapjack.VarKind.local "o4"])

def globalBody206_25 : Prog (BitVec 64) :=
.seq globalBody206_23 globalBody206_24

def globalBody206_26 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "rq", Flapjack.Exp.const 72#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "n4")

def globalBody206_27 : Prog (BitVec 64) :=
.seq globalBody206_25 globalBody206_26

def globalBody206_28 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "rq")

def globalBody206_29 : Prog (BitVec 64) :=
.seq globalBody206_27 globalBody206_28

def globalBody206_30 : Prog (BitVec 64) :=
.decCall ("n4") (Flapjack.Shape.one) ("ssz_fixed_list_count") ([Flapjack.Exp.op Flapjack.BinOp.sub
    [Flapjack.Exp.var Flapjack.VarKind.local "len", Flapjack.Exp.var Flapjack.VarKind.local "o4"],
  Flapjack.Exp.const 68#64, Flapjack.Exp.const 9223372036854775807#64]) globalBody206_29

def globalBody206_31 : Prog (BitVec 64) :=
.decCall ("n3") (Flapjack.Shape.one) ("ssz_fixed_list_count") ([Flapjack.Exp.op Flapjack.BinOp.sub
    [Flapjack.Exp.var Flapjack.VarKind.local "o4", Flapjack.Exp.var Flapjack.VarKind.local "o3"],
  Flapjack.Exp.const 184#64, Flapjack.Exp.const 9223372036854775807#64]) globalBody206_30

def globalBody206_32 : Prog (BitVec 64) :=
.decCall ("n2") (Flapjack.Shape.one) ("ssz_fixed_list_count") ([Flapjack.Exp.op Flapjack.BinOp.sub
    [Flapjack.Exp.var Flapjack.VarKind.local "o3", Flapjack.Exp.var Flapjack.VarKind.local "o2"],
  Flapjack.Exp.const 116#64, Flapjack.Exp.const 9223372036854775807#64]) globalBody206_31

def globalBody206_33 : Prog (BitVec 64) :=
.decCall ("n1") (Flapjack.Shape.one) ("ssz_fixed_list_count") ([Flapjack.Exp.op Flapjack.BinOp.sub
    [Flapjack.Exp.var Flapjack.VarKind.local "o2", Flapjack.Exp.var Flapjack.VarKind.local "o1"],
  Flapjack.Exp.const 76#64, Flapjack.Exp.const 9223372036854775807#64]) globalBody206_32

def globalBody206_34 : Prog (BitVec 64) :=
.decCall ("n0") (Flapjack.Shape.one) ("ssz_fixed_list_count") ([Flapjack.Exp.op Flapjack.BinOp.sub
    [Flapjack.Exp.var Flapjack.VarKind.local "o1", Flapjack.Exp.var Flapjack.VarKind.local "o0"],
  Flapjack.Exp.const 192#64, Flapjack.Exp.const 9223372036854775807#64]) globalBody206_33

def globalBody206_35 : Prog (BitVec 64) :=
.dec ("o4") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 112#64]),
      Flapjack.Exp.const 32#64])) globalBody206_34

def globalBody206_36 : Prog (BitVec 64) :=
.dec ("o3") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 112#64]),
      Flapjack.Exp.const 24#64])) globalBody206_35

def globalBody206_37 : Prog (BitVec 64) :=
.dec ("o2") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 112#64]),
      Flapjack.Exp.const 16#64])) globalBody206_36

def globalBody206_38 : Prog (BitVec 64) :=
.dec ("o1") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 112#64]),
      Flapjack.Exp.const 8#64])) globalBody206_37

def globalBody206_39 : Prog (BitVec 64) :=
.dec ("o0") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 112#64]))) globalBody206_38

def globalBody206_40 : Prog (BitVec 64) :=
.decCall ("rq") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 80#64]) globalBody206_39

def globalBody206_41 : Prog (BitVec 64) :=
.seq globalBody206_8 globalBody206_40

def globalBody206_42 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody206_41

def globalBody206_43 : Prog (BitVec 64) :=
.seq globalBody206_2 globalBody206_42

def globalData206 : Decl (BitVec 64) :=
.function { name := "decode_requests", inline := false, exported := false, params := [("p", Flapjack.Shape.one), ("len", Flapjack.Shape.one)], body := globalBody206_43, returnShape := (Flapjack.Shape.one) }
def globalOutput206 := Pancake.PanLang.declToHOL globalData206
end InitECandidate.Proofs.FrontendStages.Declarations
