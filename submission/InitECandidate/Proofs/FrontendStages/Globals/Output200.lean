import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data200
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate180
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody200_0 : Prog (BitVec 64) :=
Flapjack.Prog.shMemLoad Flapjack.OpSize.opW Flapjack.VarKind.local "len" (Flapjack.Exp.const 1073741832#64)

def globalBody200_1 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody200_2 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody200_3 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.const 1073741808#64) (Flapjack.Exp.var Flapjack.VarKind.local "len")) globalBody200_1 globalBody200_2

def globalBody200_4 : Prog (BitVec 64) :=
.seq globalBody200_0 globalBody200_3

def globalBody200_5 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "ssz_fail" [Flapjack.Exp.const 1#64]

def globalBody200_6 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "len") (Flapjack.Exp.const 2#64)) globalBody200_5 globalBody200_2

def globalBody200_7 : Prog (BitVec 64) :=
.seq globalBody200_4 globalBody200_6

def globalBody200_8 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "ssz_fail" [Flapjack.Exp.const 2#64]

def globalBody200_9 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
  (Flapjack.Exp.op Flapjack.BinOp.or
    [Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "schema")
        (Flapjack.Exp.const 21#64),
      Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "version")
        (Flapjack.Exp.const 1#64)])) globalBody200_8 globalBody200_2

def globalBody200_10 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "ssz_fail" [Flapjack.Exp.const 80#64]

def globalBody200_11 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "body_len") (Flapjack.Exp.const 16#64)) globalBody200_10 globalBody200_2

def globalBody200_12 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 112#64]))
  (Flapjack.Exp.var Flapjack.VarKind.local "o_npr")

def globalBody200_13 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 112#64]),
      Flapjack.Exp.const 8#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "o_wit")

def globalBody200_14 : Prog (BitVec 64) :=
.seq globalBody200_12 globalBody200_13

def globalBody200_15 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "ssz_check_offsets"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 112#64]),
    Flapjack.Exp.const 2#64, Flapjack.Exp.const 16#64, Flapjack.Exp.var Flapjack.VarKind.local "body_len"]

def globalBody200_16 : Prog (BitVec 64) :=
.seq globalBody200_14 globalBody200_15

def globalBody200_17 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "ssz_fail" [Flapjack.Exp.const 81#64]

def globalBody200_18 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "nlen") (Flapjack.Exp.const 44#64)) globalBody200_17 globalBody200_2

def globalBody200_19 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 112#64]))
  (Flapjack.Exp.var Flapjack.VarKind.local "o_pl")

def globalBody200_20 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 112#64]),
      Flapjack.Exp.const 8#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "o_vh")

def globalBody200_21 : Prog (BitVec 64) :=
.seq globalBody200_19 globalBody200_20

def globalBody200_22 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 112#64]),
      Flapjack.Exp.const 16#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "o_rq")

def globalBody200_23 : Prog (BitVec 64) :=
.seq globalBody200_21 globalBody200_22

def globalBody200_24 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "ssz_check_offsets"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 112#64]),
    Flapjack.Exp.const 3#64, Flapjack.Exp.const 44#64, Flapjack.Exp.var Flapjack.VarKind.local "nlen"]

def globalBody200_25 : Prog (BitVec 64) :=
.seq globalBody200_23 globalBody200_24

def globalBody200_26 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "ssz_fail" [Flapjack.Exp.const 50#64]

def globalBody200_27 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "payload_len") (Flapjack.Exp.const 540#64)) globalBody200_26 globalBody200_2

def globalBody200_28 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 112#64]))
  (Flapjack.Exp.var Flapjack.VarKind.local "o_extra")

def globalBody200_29 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 112#64]),
      Flapjack.Exp.const 8#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "o_txs")

def globalBody200_30 : Prog (BitVec 64) :=
.seq globalBody200_28 globalBody200_29

def globalBody200_31 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 112#64]),
      Flapjack.Exp.const 16#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "o_wd")

def globalBody200_32 : Prog (BitVec 64) :=
.seq globalBody200_30 globalBody200_31

def globalBody200_33 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 112#64]),
      Flapjack.Exp.const 24#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "o_bal")

def globalBody200_34 : Prog (BitVec 64) :=
.seq globalBody200_32 globalBody200_33

def globalBody200_35 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "ssz_check_offsets"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 112#64]),
    Flapjack.Exp.const 4#64, Flapjack.Exp.const 540#64, Flapjack.Exp.var Flapjack.VarKind.local "payload_len"]

def globalBody200_36 : Prog (BitVec 64) :=
.seq globalBody200_34 globalBody200_35

def globalBody200_37 : Prog (BitVec 64) :=
.seq globalBody200_36 globalBody200_1

def globalBody200_38 : Prog (BitVec 64) :=
.decCall ("o_bal") (Flapjack.Shape.one) ("host_input_le32") ([Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "payload", Flapjack.Exp.const 528#64]]) globalBody200_37

def globalBody200_39 : Prog (BitVec 64) :=
.decCall ("o_wd") (Flapjack.Shape.one) ("host_input_le32") ([Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "payload", Flapjack.Exp.const 508#64]]) globalBody200_38

def globalBody200_40 : Prog (BitVec 64) :=
.decCall ("o_txs") (Flapjack.Shape.one) ("host_input_le32") ([Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "payload", Flapjack.Exp.const 504#64]]) globalBody200_39

def globalBody200_41 : Prog (BitVec 64) :=
.decCall ("o_extra") (Flapjack.Shape.one) ("host_input_le32") ([Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "payload", Flapjack.Exp.const 436#64]]) globalBody200_40

def globalBody200_42 : Prog (BitVec 64) :=
.dec ("payload") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.var Flapjack.VarKind.local "np", Flapjack.Exp.var Flapjack.VarKind.local "o_pl"]) globalBody200_41

def globalBody200_43 : Prog (BitVec 64) :=
.seq globalBody200_27 globalBody200_42

def globalBody200_44 : Prog (BitVec 64) :=
.dec ("payload_len") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub
  [Flapjack.Exp.var Flapjack.VarKind.local "o_vh", Flapjack.Exp.var Flapjack.VarKind.local "o_pl"]) globalBody200_43

def globalBody200_45 : Prog (BitVec 64) :=
.seq globalBody200_25 globalBody200_44

def globalBody200_46 : Prog (BitVec 64) :=
.decCall ("o_rq") (Flapjack.Shape.one) ("host_input_le32") ([Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "np", Flapjack.Exp.const 40#64]]) globalBody200_45

def globalBody200_47 : Prog (BitVec 64) :=
.decCall ("o_vh") (Flapjack.Shape.one) ("host_input_le32") ([Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "np", Flapjack.Exp.const 4#64]]) globalBody200_46

def globalBody200_48 : Prog (BitVec 64) :=
.decCall ("o_pl") (Flapjack.Shape.one) ("host_input_le32") ([Flapjack.Exp.var Flapjack.VarKind.local "np"]) globalBody200_47

def globalBody200_49 : Prog (BitVec 64) :=
.dec ("np") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.const 2#64, Flapjack.Exp.var Flapjack.VarKind.local "o_npr"]) globalBody200_48

def globalBody200_50 : Prog (BitVec 64) :=
.seq globalBody200_18 globalBody200_49

def globalBody200_51 : Prog (BitVec 64) :=
.dec ("nlen") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub
  [Flapjack.Exp.var Flapjack.VarKind.local "o_wit", Flapjack.Exp.var Flapjack.VarKind.local "o_npr"]) globalBody200_50

def globalBody200_52 : Prog (BitVec 64) :=
.seq globalBody200_16 globalBody200_51

def globalBody200_53 : Prog (BitVec 64) :=
.decCall ("o_wit") (Flapjack.Shape.one) ("host_input_le32") ([Flapjack.Exp.const 6#64]) globalBody200_52

def globalBody200_54 : Prog (BitVec 64) :=
.decCall ("o_npr") (Flapjack.Shape.one) ("host_input_le32") ([Flapjack.Exp.const 2#64]) globalBody200_53

def globalBody200_55 : Prog (BitVec 64) :=
.seq globalBody200_11 globalBody200_54

def globalBody200_56 : Prog (BitVec 64) :=
.dec ("body_len") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.var Flapjack.VarKind.local "len", Flapjack.Exp.const 2#64]) globalBody200_55

def globalBody200_57 : Prog (BitVec 64) :=
.seq globalBody200_9 globalBody200_56

def globalBody200_58 : Prog (BitVec 64) :=
.decCall ("version") (Flapjack.Shape.one) ("host_input_byte") ([Flapjack.Exp.const 1#64]) globalBody200_57

def globalBody200_59 : Prog (BitVec 64) :=
.decCall ("schema") (Flapjack.Shape.one) ("host_input_byte") ([Flapjack.Exp.const 0#64]) globalBody200_58

def globalBody200_60 : Prog (BitVec 64) :=
.seq globalBody200_7 globalBody200_59

def globalBody200_61 : Prog (BitVec 64) :=
.dec ("len") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody200_60

def globalData200 : Decl (BitVec 64) :=
.function { name := "precheck_host_ssz_header", inline := false, exported := false, params := [], body := globalBody200_61, returnShape := (Flapjack.Shape.one) }
def globalOutput200 := Pancake.PanLang.declToHOL globalData200
end InitECandidate.Proofs.FrontendStages.Declarations
