import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify814
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body830_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "buffer_read"
  [Flapjack.Exp.var Flapjack.VarKind.local "data", Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.const 0#64,
    Flapjack.Exp.const 96#64, Flapjack.Exp.var Flapjack.VarKind.local "hdr"]

def body830_1 : Prog (BitVec 64) :=
Flapjack.Prog.raise "EvmErr" (Flapjack.Exp.const 4#64)

def body830_2 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body830_3 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.const 1024#64) (Flapjack.Exp.var Flapjack.VarKind.local "blen")) body830_1 body830_2

def body830_4 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.const 1024#64) (Flapjack.Exp.var Flapjack.VarKind.local "elen")) body830_1 body830_2

def body830_5 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.const 1024#64) (Flapjack.Exp.var Flapjack.VarKind.local "mlen")) body830_1 body830_2

def body830_6 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "buffer_read"
  [Flapjack.Exp.var Flapjack.VarKind.local "data", Flapjack.Exp.var Flapjack.VarKind.local "n",
    Flapjack.Exp.var Flapjack.VarKind.local "exp_start", Flapjack.Exp.var Flapjack.VarKind.local "hlen",
    Flapjack.Exp.var Flapjack.VarKind.local "hdr"]

def body830_7 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "charge_gas" [Flapjack.Exp.var Flapjack.VarKind.local "cost"]

def body830_8 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 120#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "empty")

def body830_9 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 128#64])
  (Flapjack.Exp.const 0#64)

def body830_10 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body830_11 : Prog (BitVec 64) :=
.seq body830_9 body830_10

def body830_12 : Prog (BitVec 64) :=
.seq body830_8 body830_11

def body830_13 : Prog (BitVec 64) :=
.decCall ("empty") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 8#64]) body830_12

def body830_14 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.op Flapjack.BinOp.and
  [Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
      (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "blen") (Flapjack.Exp.const 0#64)),
    Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
      (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "mlen") (Flapjack.Exp.const 0#64))]) body830_13 body830_2

def body830_15 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "buffer_read"
  [Flapjack.Exp.var Flapjack.VarKind.local "data", Flapjack.Exp.var Flapjack.VarKind.local "n",
    Flapjack.Exp.const 96#64, Flapjack.Exp.var Flapjack.VarKind.local "blen",
    Flapjack.Exp.var Flapjack.VarKind.local "bp"]

def body830_16 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "buffer_read"
  [Flapjack.Exp.var Flapjack.VarKind.local "data", Flapjack.Exp.var Flapjack.VarKind.local "n",
    Flapjack.Exp.var Flapjack.VarKind.local "exp_start", Flapjack.Exp.var Flapjack.VarKind.local "elen",
    Flapjack.Exp.var Flapjack.VarKind.local "ep"]

def body830_17 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "buffer_read"
  [Flapjack.Exp.var Flapjack.VarKind.local "data", Flapjack.Exp.var Flapjack.VarKind.local "n",
    Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "exp_start", Flapjack.Exp.var Flapjack.VarKind.local "elen"],
    Flapjack.Exp.var Flapjack.VarKind.local "mlen", Flapjack.Exp.var Flapjack.VarKind.local "mp"]

def body830_18 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "modexp"
  [Flapjack.Exp.var Flapjack.VarKind.local "bp", Flapjack.Exp.var Flapjack.VarKind.local "blen",
    Flapjack.Exp.var Flapjack.VarKind.local "ep", Flapjack.Exp.var Flapjack.VarKind.local "elen",
    Flapjack.Exp.var Flapjack.VarKind.local "mp", Flapjack.Exp.var Flapjack.VarKind.local "mlen",
    Flapjack.Exp.var Flapjack.VarKind.local "out"]

def body830_19 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "heap_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"]

def body830_20 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 120#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "out")

def body830_21 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 128#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "mlen")

def body830_22 : Prog (BitVec 64) :=
.seq body830_21 body830_10

def body830_23 : Prog (BitVec 64) :=
.seq body830_20 body830_22

def body830_24 : Prog (BitVec 64) :=
.seq body830_19 body830_23

def body830_25 : Prog (BitVec 64) :=
.seq body830_18 body830_24

def body830_26 : Prog (BitVec 64) :=
.seq body830_17 body830_25

def body830_27 : Prog (BitVec 64) :=
.seq body830_16 body830_26

def body830_28 : Prog (BitVec 64) :=
.seq body830_15 body830_27

def body830_29 : Prog (BitVec 64) :=
.decCall ("mp") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "mlen", Flapjack.Exp.const 8#64]]) body830_28

def body830_30 : Prog (BitVec 64) :=
.decCall ("ep") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "elen", Flapjack.Exp.const 8#64]]) body830_29

def body830_31 : Prog (BitVec 64) :=
.decCall ("bp") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "blen", Flapjack.Exp.const 8#64]]) body830_30

def body830_32 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) body830_31

def body830_33 : Prog (BitVec 64) :=
.decCall ("out") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "mlen", Flapjack.Exp.const 8#64]]) body830_32

def body830_34 : Prog (BitVec 64) :=
.seq body830_14 body830_33

def body830_35 : Prog (BitVec 64) :=
.seq body830_7 body830_34

def body830_36 : Prog (BitVec 64) :=
.decCall ("cost") (Flapjack.Shape.one) ("modexp_gas") ([Flapjack.Exp.var Flapjack.VarKind.local "blen", Flapjack.Exp.var Flapjack.VarKind.local "mlen",
  Flapjack.Exp.var Flapjack.VarKind.local "elen", Flapjack.Exp.var Flapjack.VarKind.local "head"]) body830_35

def body830_37 : Prog (BitVec 64) :=
.decCall ("head") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_from_be") ([Flapjack.Exp.var Flapjack.VarKind.local "hdr", Flapjack.Exp.var Flapjack.VarKind.local "hlen"]) body830_36

def body830_38 : Prog (BitVec 64) :=
.seq body830_6 body830_37

def body830_39 : Prog (BitVec 64) :=
.decCall ("hlen") (Flapjack.Shape.one) ("min") ([Flapjack.Exp.const 32#64, Flapjack.Exp.var Flapjack.VarKind.local "elen"]) body830_38

def body830_40 : Prog (BitVec 64) :=
.dec ("exp_start") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.const 96#64, Flapjack.Exp.var Flapjack.VarKind.local "blen"]) body830_39

def body830_41 : Prog (BitVec 64) :=
.seq body830_5 body830_40

def body830_42 : Prog (BitVec 64) :=
.decCall ("mlen") (Flapjack.Shape.one) ("sat_word") ([Flapjack.Exp.var Flapjack.VarKind.local "ml"]) body830_41

def body830_43 : Prog (BitVec 64) :=
.decCall ("ml") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_from_be") ([Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "hdr", Flapjack.Exp.const 64#64],
  Flapjack.Exp.const 32#64]) body830_42

def body830_44 : Prog (BitVec 64) :=
.seq body830_4 body830_43

def body830_45 : Prog (BitVec 64) :=
.decCall ("elen") (Flapjack.Shape.one) ("sat_word") ([Flapjack.Exp.var Flapjack.VarKind.local "el"]) body830_44

def body830_46 : Prog (BitVec 64) :=
.decCall ("el") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_from_be") ([Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "hdr", Flapjack.Exp.const 32#64],
  Flapjack.Exp.const 32#64]) body830_45

def body830_47 : Prog (BitVec 64) :=
.seq body830_3 body830_46

def body830_48 : Prog (BitVec 64) :=
.decCall ("blen") (Flapjack.Shape.one) ("sat_word") ([Flapjack.Exp.var Flapjack.VarKind.local "bl"]) body830_47

def body830_49 : Prog (BitVec 64) :=
.decCall ("bl") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_from_be") ([Flapjack.Exp.var Flapjack.VarKind.local "hdr", Flapjack.Exp.const 32#64]) body830_48

def body830_50 : Prog (BitVec 64) :=
.seq body830_0 body830_49

def body830_51 : Prog (BitVec 64) :=
.dec ("hdr") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.global "pre_hdr_buf") body830_50

def body830_52 : Prog (BitVec 64) :=
.dec ("n") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "msg", Flapjack.Exp.const 96#64])) body830_51

def body830_53 : Prog (BitVec 64) :=
.dec ("data") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "msg", Flapjack.Exp.const 88#64])) body830_52

def body830_54 : Prog (BitVec 64) :=
.dec ("msg") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 112#64])) body830_53

def body830_55 : Prog (BitVec 64) :=
.seq body830_8 body830_9

def body830_56 : Prog (BitVec 64) :=
.seq body830_55 body830_10

def body830_57 : Prog (BitVec 64) :=
.decCall ("empty") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 8#64]) body830_56

def body830_58 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.op Flapjack.BinOp.and
  [Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
      (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "blen") (Flapjack.Exp.const 0#64)),
    Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
      (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "mlen") (Flapjack.Exp.const 0#64))]) body830_57 body830_2

def body830_59 : Prog (BitVec 64) :=
.seq body830_7 body830_58

def body830_60 : Prog (BitVec 64) :=
.seq body830_15 body830_16

def body830_61 : Prog (BitVec 64) :=
.seq body830_60 body830_17

def body830_62 : Prog (BitVec 64) :=
.seq body830_61 body830_18

def body830_63 : Prog (BitVec 64) :=
.seq body830_62 body830_19

def body830_64 : Prog (BitVec 64) :=
.seq body830_63 body830_20

def body830_65 : Prog (BitVec 64) :=
.seq body830_64 body830_21

def body830_66 : Prog (BitVec 64) :=
.seq body830_65 body830_10

def body830_67 : Prog (BitVec 64) :=
.decCall ("mp") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "mlen", Flapjack.Exp.const 8#64]]) body830_66

def body830_68 : Prog (BitVec 64) :=
.decCall ("ep") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "elen", Flapjack.Exp.const 8#64]]) body830_67

def body830_69 : Prog (BitVec 64) :=
.decCall ("bp") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "blen", Flapjack.Exp.const 8#64]]) body830_68

def body830_70 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) body830_69

def body830_71 : Prog (BitVec 64) :=
.decCall ("out") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "mlen", Flapjack.Exp.const 8#64]]) body830_70

def body830_72 : Prog (BitVec 64) :=
.seq body830_59 body830_71

def body830_73 : Prog (BitVec 64) :=
.decCall ("cost") (Flapjack.Shape.one) ("modexp_gas") ([Flapjack.Exp.var Flapjack.VarKind.local "blen", Flapjack.Exp.var Flapjack.VarKind.local "mlen",
  Flapjack.Exp.var Flapjack.VarKind.local "elen", Flapjack.Exp.var Flapjack.VarKind.local "head"]) body830_72

def body830_74 : Prog (BitVec 64) :=
.decCall ("head") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_from_be") ([Flapjack.Exp.var Flapjack.VarKind.local "hdr", Flapjack.Exp.var Flapjack.VarKind.local "hlen"]) body830_73

def body830_75 : Prog (BitVec 64) :=
.seq body830_6 body830_74

def body830_76 : Prog (BitVec 64) :=
.decCall ("hlen") (Flapjack.Shape.one) ("min") ([Flapjack.Exp.const 32#64, Flapjack.Exp.var Flapjack.VarKind.local "elen"]) body830_75

def body830_77 : Prog (BitVec 64) :=
.dec ("exp_start") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.const 96#64, Flapjack.Exp.var Flapjack.VarKind.local "blen"]) body830_76

def body830_78 : Prog (BitVec 64) :=
.seq body830_5 body830_77

def body830_79 : Prog (BitVec 64) :=
.decCall ("mlen") (Flapjack.Shape.one) ("sat_word") ([Flapjack.Exp.var Flapjack.VarKind.local "ml"]) body830_78

def body830_80 : Prog (BitVec 64) :=
.decCall ("ml") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_from_be") ([Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "hdr", Flapjack.Exp.const 64#64],
  Flapjack.Exp.const 32#64]) body830_79

def body830_81 : Prog (BitVec 64) :=
.seq body830_4 body830_80

def body830_82 : Prog (BitVec 64) :=
.decCall ("elen") (Flapjack.Shape.one) ("sat_word") ([Flapjack.Exp.var Flapjack.VarKind.local "el"]) body830_81

def body830_83 : Prog (BitVec 64) :=
.decCall ("el") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_from_be") ([Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "hdr", Flapjack.Exp.const 32#64],
  Flapjack.Exp.const 32#64]) body830_82

def body830_84 : Prog (BitVec 64) :=
.seq body830_3 body830_83

def body830_85 : Prog (BitVec 64) :=
.decCall ("blen") (Flapjack.Shape.one) ("sat_word") ([Flapjack.Exp.var Flapjack.VarKind.local "bl"]) body830_84

def body830_86 : Prog (BitVec 64) :=
.decCall ("bl") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_from_be") ([Flapjack.Exp.var Flapjack.VarKind.local "hdr", Flapjack.Exp.const 32#64]) body830_85

def body830_87 : Prog (BitVec 64) :=
.seq body830_0 body830_86

def body830_88 : Prog (BitVec 64) :=
.dec ("hdr") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.global "pre_hdr_buf") body830_87

def body830_89 : Prog (BitVec 64) :=
.dec ("n") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "msg", Flapjack.Exp.const 96#64])) body830_88

def body830_90 : Prog (BitVec 64) :=
.dec ("data") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "msg", Flapjack.Exp.const 88#64])) body830_89

def body830_91 : Prog (BitVec 64) :=
.dec ("msg") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 112#64])) body830_90

def originalData830 : Decl (BitVec 64) :=
.function { name := "pre_modexp", inline := false, exported := false, params := [], body := body830_54, returnShape := (Flapjack.Shape.one) }
def simplifiedData830 : Decl (BitVec 64) :=
.function { name := "pre_modexp", inline := false, exported := false, params := [], body := body830_91, returnShape := (Flapjack.Shape.one) }
def original830 := Pancake.PanLang.declToHOL originalData830
def simplified830 := Pancake.PanLang.declToHOL simplifiedData830
end InitECandidate.Proofs.FrontendStages.Declarations
