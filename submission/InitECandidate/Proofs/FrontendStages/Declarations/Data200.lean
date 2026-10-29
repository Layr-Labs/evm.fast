import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify184
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body200_0 : Prog (BitVec 64) :=
Flapjack.Prog.shMemLoad Flapjack.OpSize.opW Flapjack.VarKind.local "len" (Flapjack.Exp.const 1073741832#64)

def body200_1 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body200_2 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body200_3 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.const 1073741808#64) (Flapjack.Exp.var Flapjack.VarKind.local "len")) body200_1 body200_2

def body200_4 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "ssz_fail" [Flapjack.Exp.const 1#64]

def body200_5 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "len") (Flapjack.Exp.const 2#64)) body200_4 body200_2

def body200_6 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "ssz_fail" [Flapjack.Exp.const 2#64]

def body200_7 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
  (Flapjack.Exp.op Flapjack.BinOp.or
    [Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "schema")
        (Flapjack.Exp.const 21#64),
      Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "version")
        (Flapjack.Exp.const 1#64)])) body200_6 body200_2

def body200_8 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "ssz_fail" [Flapjack.Exp.const 80#64]

def body200_9 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "body_len") (Flapjack.Exp.const 16#64)) body200_8 body200_2

def body200_10 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.var Flapjack.VarKind.global "ssz_offs")
  (Flapjack.Exp.var Flapjack.VarKind.local "o_npr")

def body200_11 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ssz_offs", Flapjack.Exp.const 8#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "o_wit")

def body200_12 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "ssz_check_offsets"
  [Flapjack.Exp.var Flapjack.VarKind.global "ssz_offs", Flapjack.Exp.const 2#64, Flapjack.Exp.const 16#64,
    Flapjack.Exp.var Flapjack.VarKind.local "body_len"]

def body200_13 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "ssz_fail" [Flapjack.Exp.const 81#64]

def body200_14 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "nlen") (Flapjack.Exp.const 44#64)) body200_13 body200_2

def body200_15 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.var Flapjack.VarKind.global "ssz_offs")
  (Flapjack.Exp.var Flapjack.VarKind.local "o_pl")

def body200_16 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ssz_offs", Flapjack.Exp.const 8#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "o_vh")

def body200_17 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ssz_offs", Flapjack.Exp.const 16#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "o_rq")

def body200_18 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "ssz_check_offsets"
  [Flapjack.Exp.var Flapjack.VarKind.global "ssz_offs", Flapjack.Exp.const 3#64, Flapjack.Exp.const 44#64,
    Flapjack.Exp.var Flapjack.VarKind.local "nlen"]

def body200_19 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "ssz_fail" [Flapjack.Exp.const 50#64]

def body200_20 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "payload_len") (Flapjack.Exp.const 540#64)) body200_19 body200_2

def body200_21 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.var Flapjack.VarKind.global "ssz_offs")
  (Flapjack.Exp.var Flapjack.VarKind.local "o_extra")

def body200_22 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ssz_offs", Flapjack.Exp.const 8#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "o_txs")

def body200_23 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ssz_offs", Flapjack.Exp.const 16#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "o_wd")

def body200_24 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ssz_offs", Flapjack.Exp.const 24#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "o_bal")

def body200_25 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "ssz_check_offsets"
  [Flapjack.Exp.var Flapjack.VarKind.global "ssz_offs", Flapjack.Exp.const 4#64, Flapjack.Exp.const 540#64,
    Flapjack.Exp.var Flapjack.VarKind.local "payload_len"]

def body200_26 : Prog (BitVec 64) :=
.seq body200_25 body200_1

def body200_27 : Prog (BitVec 64) :=
.seq body200_24 body200_26

def body200_28 : Prog (BitVec 64) :=
.seq body200_23 body200_27

def body200_29 : Prog (BitVec 64) :=
.seq body200_22 body200_28

def body200_30 : Prog (BitVec 64) :=
.seq body200_21 body200_29

def body200_31 : Prog (BitVec 64) :=
.decCall ("o_bal") (Flapjack.Shape.one) ("host_input_le32") ([Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "payload", Flapjack.Exp.const 528#64]]) body200_30

def body200_32 : Prog (BitVec 64) :=
.decCall ("o_wd") (Flapjack.Shape.one) ("host_input_le32") ([Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "payload", Flapjack.Exp.const 508#64]]) body200_31

def body200_33 : Prog (BitVec 64) :=
.decCall ("o_txs") (Flapjack.Shape.one) ("host_input_le32") ([Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "payload", Flapjack.Exp.const 504#64]]) body200_32

def body200_34 : Prog (BitVec 64) :=
.decCall ("o_extra") (Flapjack.Shape.one) ("host_input_le32") ([Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "payload", Flapjack.Exp.const 436#64]]) body200_33

def body200_35 : Prog (BitVec 64) :=
.dec ("payload") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.var Flapjack.VarKind.local "np", Flapjack.Exp.var Flapjack.VarKind.local "o_pl"]) body200_34

def body200_36 : Prog (BitVec 64) :=
.seq body200_20 body200_35

def body200_37 : Prog (BitVec 64) :=
.dec ("payload_len") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub
  [Flapjack.Exp.var Flapjack.VarKind.local "o_vh", Flapjack.Exp.var Flapjack.VarKind.local "o_pl"]) body200_36

def body200_38 : Prog (BitVec 64) :=
.seq body200_18 body200_37

def body200_39 : Prog (BitVec 64) :=
.seq body200_17 body200_38

def body200_40 : Prog (BitVec 64) :=
.seq body200_16 body200_39

def body200_41 : Prog (BitVec 64) :=
.seq body200_15 body200_40

def body200_42 : Prog (BitVec 64) :=
.decCall ("o_rq") (Flapjack.Shape.one) ("host_input_le32") ([Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "np", Flapjack.Exp.const 40#64]]) body200_41

def body200_43 : Prog (BitVec 64) :=
.decCall ("o_vh") (Flapjack.Shape.one) ("host_input_le32") ([Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "np", Flapjack.Exp.const 4#64]]) body200_42

def body200_44 : Prog (BitVec 64) :=
.decCall ("o_pl") (Flapjack.Shape.one) ("host_input_le32") ([Flapjack.Exp.var Flapjack.VarKind.local "np"]) body200_43

def body200_45 : Prog (BitVec 64) :=
.dec ("np") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.const 2#64, Flapjack.Exp.var Flapjack.VarKind.local "o_npr"]) body200_44

def body200_46 : Prog (BitVec 64) :=
.seq body200_14 body200_45

def body200_47 : Prog (BitVec 64) :=
.dec ("nlen") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub
  [Flapjack.Exp.var Flapjack.VarKind.local "o_wit", Flapjack.Exp.var Flapjack.VarKind.local "o_npr"]) body200_46

def body200_48 : Prog (BitVec 64) :=
.seq body200_12 body200_47

def body200_49 : Prog (BitVec 64) :=
.seq body200_11 body200_48

def body200_50 : Prog (BitVec 64) :=
.seq body200_10 body200_49

def body200_51 : Prog (BitVec 64) :=
.decCall ("o_wit") (Flapjack.Shape.one) ("host_input_le32") ([Flapjack.Exp.const 6#64]) body200_50

def body200_52 : Prog (BitVec 64) :=
.decCall ("o_npr") (Flapjack.Shape.one) ("host_input_le32") ([Flapjack.Exp.const 2#64]) body200_51

def body200_53 : Prog (BitVec 64) :=
.seq body200_9 body200_52

def body200_54 : Prog (BitVec 64) :=
.dec ("body_len") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.var Flapjack.VarKind.local "len", Flapjack.Exp.const 2#64]) body200_53

def body200_55 : Prog (BitVec 64) :=
.seq body200_7 body200_54

def body200_56 : Prog (BitVec 64) :=
.decCall ("version") (Flapjack.Shape.one) ("host_input_byte") ([Flapjack.Exp.const 1#64]) body200_55

def body200_57 : Prog (BitVec 64) :=
.decCall ("schema") (Flapjack.Shape.one) ("host_input_byte") ([Flapjack.Exp.const 0#64]) body200_56

def body200_58 : Prog (BitVec 64) :=
.seq body200_5 body200_57

def body200_59 : Prog (BitVec 64) :=
.seq body200_3 body200_58

def body200_60 : Prog (BitVec 64) :=
.seq body200_0 body200_59

def body200_61 : Prog (BitVec 64) :=
.dec ("len") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body200_60

def body200_62 : Prog (BitVec 64) :=
.seq body200_0 body200_3

def body200_63 : Prog (BitVec 64) :=
.seq body200_62 body200_5

def body200_64 : Prog (BitVec 64) :=
.seq body200_10 body200_11

def body200_65 : Prog (BitVec 64) :=
.seq body200_64 body200_12

def body200_66 : Prog (BitVec 64) :=
.seq body200_15 body200_16

def body200_67 : Prog (BitVec 64) :=
.seq body200_66 body200_17

def body200_68 : Prog (BitVec 64) :=
.seq body200_67 body200_18

def body200_69 : Prog (BitVec 64) :=
.seq body200_21 body200_22

def body200_70 : Prog (BitVec 64) :=
.seq body200_69 body200_23

def body200_71 : Prog (BitVec 64) :=
.seq body200_70 body200_24

def body200_72 : Prog (BitVec 64) :=
.seq body200_71 body200_25

def body200_73 : Prog (BitVec 64) :=
.seq body200_72 body200_1

def body200_74 : Prog (BitVec 64) :=
.decCall ("o_bal") (Flapjack.Shape.one) ("host_input_le32") ([Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "payload", Flapjack.Exp.const 528#64]]) body200_73

def body200_75 : Prog (BitVec 64) :=
.decCall ("o_wd") (Flapjack.Shape.one) ("host_input_le32") ([Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "payload", Flapjack.Exp.const 508#64]]) body200_74

def body200_76 : Prog (BitVec 64) :=
.decCall ("o_txs") (Flapjack.Shape.one) ("host_input_le32") ([Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "payload", Flapjack.Exp.const 504#64]]) body200_75

def body200_77 : Prog (BitVec 64) :=
.decCall ("o_extra") (Flapjack.Shape.one) ("host_input_le32") ([Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "payload", Flapjack.Exp.const 436#64]]) body200_76

def body200_78 : Prog (BitVec 64) :=
.dec ("payload") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.var Flapjack.VarKind.local "np", Flapjack.Exp.var Flapjack.VarKind.local "o_pl"]) body200_77

def body200_79 : Prog (BitVec 64) :=
.seq body200_20 body200_78

def body200_80 : Prog (BitVec 64) :=
.dec ("payload_len") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub
  [Flapjack.Exp.var Flapjack.VarKind.local "o_vh", Flapjack.Exp.var Flapjack.VarKind.local "o_pl"]) body200_79

def body200_81 : Prog (BitVec 64) :=
.seq body200_68 body200_80

def body200_82 : Prog (BitVec 64) :=
.decCall ("o_rq") (Flapjack.Shape.one) ("host_input_le32") ([Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "np", Flapjack.Exp.const 40#64]]) body200_81

def body200_83 : Prog (BitVec 64) :=
.decCall ("o_vh") (Flapjack.Shape.one) ("host_input_le32") ([Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "np", Flapjack.Exp.const 4#64]]) body200_82

def body200_84 : Prog (BitVec 64) :=
.decCall ("o_pl") (Flapjack.Shape.one) ("host_input_le32") ([Flapjack.Exp.var Flapjack.VarKind.local "np"]) body200_83

def body200_85 : Prog (BitVec 64) :=
.dec ("np") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.const 2#64, Flapjack.Exp.var Flapjack.VarKind.local "o_npr"]) body200_84

def body200_86 : Prog (BitVec 64) :=
.seq body200_14 body200_85

def body200_87 : Prog (BitVec 64) :=
.dec ("nlen") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub
  [Flapjack.Exp.var Flapjack.VarKind.local "o_wit", Flapjack.Exp.var Flapjack.VarKind.local "o_npr"]) body200_86

def body200_88 : Prog (BitVec 64) :=
.seq body200_65 body200_87

def body200_89 : Prog (BitVec 64) :=
.decCall ("o_wit") (Flapjack.Shape.one) ("host_input_le32") ([Flapjack.Exp.const 6#64]) body200_88

def body200_90 : Prog (BitVec 64) :=
.decCall ("o_npr") (Flapjack.Shape.one) ("host_input_le32") ([Flapjack.Exp.const 2#64]) body200_89

def body200_91 : Prog (BitVec 64) :=
.seq body200_9 body200_90

def body200_92 : Prog (BitVec 64) :=
.dec ("body_len") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.var Flapjack.VarKind.local "len", Flapjack.Exp.const 2#64]) body200_91

def body200_93 : Prog (BitVec 64) :=
.seq body200_7 body200_92

def body200_94 : Prog (BitVec 64) :=
.decCall ("version") (Flapjack.Shape.one) ("host_input_byte") ([Flapjack.Exp.const 1#64]) body200_93

def body200_95 : Prog (BitVec 64) :=
.decCall ("schema") (Flapjack.Shape.one) ("host_input_byte") ([Flapjack.Exp.const 0#64]) body200_94

def body200_96 : Prog (BitVec 64) :=
.seq body200_63 body200_95

def body200_97 : Prog (BitVec 64) :=
.dec ("len") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body200_96

def originalData200 : Decl (BitVec 64) :=
.function { name := "precheck_host_ssz_header", inline := false, exported := false, params := [], body := body200_61, returnShape := (Flapjack.Shape.one) }
def simplifiedData200 : Decl (BitVec 64) :=
.function { name := "precheck_host_ssz_header", inline := false, exported := false, params := [], body := body200_97, returnShape := (Flapjack.Shape.one) }
def original200 := Pancake.PanLang.declToHOL originalData200
def simplified200 := Pancake.PanLang.declToHOL simplifiedData200
end InitECandidate.Proofs.FrontendStages.Declarations
