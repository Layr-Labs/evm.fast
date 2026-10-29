import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data340
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate324
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody340_0 : Prog (BitVec 64) :=
Flapjack.Prog.raise "TxErr" (Flapjack.Exp.const 40#64)

def globalBody340_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody340_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "z") (Flapjack.Exp.const 0#64)) globalBody340_0 globalBody340_1

def globalBody340_3 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "lt") (Flapjack.Exp.const 0#64)) globalBody340_0 globalBody340_1

def globalBody340_4 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "z"), none)) "u256_is_zero"
  [Flapjack.Exp.var Flapjack.VarKind.local "s"]

def globalBody340_5 : Prog (BitVec 64) :=
.seq globalBody340_3 globalBody340_4

def globalBody340_6 : Prog (BitVec 64) :=
Flapjack.Prog.raise "TxErr" (Flapjack.Exp.const 41#64)

def globalBody340_7 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "z") (Flapjack.Exp.const 0#64)) globalBody340_6 globalBody340_1

def globalBody340_8 : Prog (BitVec 64) :=
.seq globalBody340_5 globalBody340_7

def globalBody340_9 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "gt") (Flapjack.Exp.const 0#64)) globalBody340_6 globalBody340_1

def globalBody340_10 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "signing_hash_pre155"
  [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.var Flapjack.VarKind.local "out_hash"]

def globalBody340_11 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.op Flapjack.BinOp.sub
    [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "v"), Flapjack.Exp.const 27#64])

def globalBody340_12 : Prog (BitVec 64) :=
.seq globalBody340_10 globalBody340_11

def globalBody340_13 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
  (Flapjack.Exp.op Flapjack.BinOp.or
    [Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "v"))
        (Flapjack.Exp.const 27#64),
      Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "v"))
        (Flapjack.Exp.const 28#64)])) globalBody340_12 globalBody340_1

def globalBody340_14 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "fits") (Flapjack.Exp.const 0#64)) globalBody340_13 globalBody340_1

def globalBody340_15 : Prog (BitVec 64) :=
Flapjack.Prog.raise "TxErr" (Flapjack.Exp.const 42#64)

def globalBody340_16 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.op Flapjack.BinOp.and
  [Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
      (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "eq35") (Flapjack.Exp.const 0#64)),
    Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
      (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "eq36") (Flapjack.Exp.const 0#64))]) globalBody340_15 globalBody340_1

def globalBody340_17 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "signing_hash_155"
  [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.var Flapjack.VarKind.local "chain_id",
    Flapjack.Exp.var Flapjack.VarKind.local "out_hash"]

def globalBody340_18 : Prog (BitVec 64) :=
.seq globalBody340_16 globalBody340_17

def globalBody340_19 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "eq36")

def globalBody340_20 : Prog (BitVec 64) :=
.seq globalBody340_18 globalBody340_19

def globalBody340_21 : Prog (BitVec 64) :=
.decCall ("eq36") (Flapjack.Shape.one) ("u256_eq") ([Flapjack.Exp.var Flapjack.VarKind.local "v", Flapjack.Exp.var Flapjack.VarKind.local "v36"]) globalBody340_20

def globalBody340_22 : Prog (BitVec 64) :=
.decCall ("eq35") (Flapjack.Shape.one) ("u256_eq") ([Flapjack.Exp.var Flapjack.VarKind.local "v", Flapjack.Exp.var Flapjack.VarKind.local "v35"]) globalBody340_21

def globalBody340_23 : Prog (BitVec 64) :=
.decCall ("v36") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_add") ([Flapjack.Exp.var Flapjack.VarKind.local "x2",
  Flapjack.Exp.rStruct
    [Flapjack.Exp.const 36#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64]]) globalBody340_22

def globalBody340_24 : Prog (BitVec 64) :=
.decCall ("v35") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_add") ([Flapjack.Exp.var Flapjack.VarKind.local "x2",
  Flapjack.Exp.rStruct
    [Flapjack.Exp.const 35#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64]]) globalBody340_23

def globalBody340_25 : Prog (BitVec 64) :=
.decCall ("x2") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_add") ([Flapjack.Exp.var Flapjack.VarKind.local "c", Flapjack.Exp.var Flapjack.VarKind.local "c"]) globalBody340_24

def globalBody340_26 : Prog (BitVec 64) :=
.dec ("c") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.rStruct
  [Flapjack.Exp.var Flapjack.VarKind.local "chain_id", Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64,
    Flapjack.Exp.const 0#64]) globalBody340_25

def globalBody340_27 : Prog (BitVec 64) :=
.seq globalBody340_14 globalBody340_26

def globalBody340_28 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "t") (Flapjack.Exp.const 0#64)) globalBody340_27 globalBody340_1

def globalBody340_29 : Prog (BitVec 64) :=
Flapjack.Prog.raise "TxErr" (Flapjack.Exp.const 43#64)

def globalBody340_30 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "fits") (Flapjack.Exp.const 0#64)) globalBody340_29 globalBody340_1

def globalBody340_31 : Prog (BitVec 64) :=
.seq globalBody340_28 globalBody340_30

def globalBody340_32 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.const 1#64)
  (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "v"))) globalBody340_29 globalBody340_1

def globalBody340_33 : Prog (BitVec 64) :=
.seq globalBody340_31 globalBody340_32

def globalBody340_34 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "signing_hash_2930"
  [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.var Flapjack.VarKind.local "out_hash"]

def globalBody340_35 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "t") (Flapjack.Exp.const 1#64)) globalBody340_34 globalBody340_1

def globalBody340_36 : Prog (BitVec 64) :=
.seq globalBody340_33 globalBody340_35

def globalBody340_37 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "signing_hash_1559"
  [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.var Flapjack.VarKind.local "out_hash"]

def globalBody340_38 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "t") (Flapjack.Exp.const 2#64)) globalBody340_37 globalBody340_1

def globalBody340_39 : Prog (BitVec 64) :=
.seq globalBody340_36 globalBody340_38

def globalBody340_40 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "signing_hash_4844"
  [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.var Flapjack.VarKind.local "out_hash"]

def globalBody340_41 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "t") (Flapjack.Exp.const 3#64)) globalBody340_40 globalBody340_1

def globalBody340_42 : Prog (BitVec 64) :=
.seq globalBody340_39 globalBody340_41

def globalBody340_43 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "signing_hash_7702"
  [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.var Flapjack.VarKind.local "out_hash"]

def globalBody340_44 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "t") (Flapjack.Exp.const 4#64)) globalBody340_43 globalBody340_1

def globalBody340_45 : Prog (BitVec 64) :=
.seq globalBody340_42 globalBody340_44

def globalBody340_46 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "v"))

def globalBody340_47 : Prog (BitVec 64) :=
.seq globalBody340_45 globalBody340_46

def globalBody340_48 : Prog (BitVec 64) :=
.decCall ("fits") (Flapjack.Shape.one) ("u256_fits_word") ([Flapjack.Exp.var Flapjack.VarKind.local "v"]) globalBody340_47

def globalBody340_49 : Prog (BitVec 64) :=
.dec ("v") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.load (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 288#64])) globalBody340_48

def globalBody340_50 : Prog (BitVec 64) :=
.dec ("t") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 0#64])) globalBody340_49

def globalBody340_51 : Prog (BitVec 64) :=
.seq globalBody340_9 globalBody340_50

def globalBody340_52 : Prog (BitVec 64) :=
.decCall ("gt") (Flapjack.Shape.one) ("u256_gt") ([Flapjack.Exp.var Flapjack.VarKind.local "s",
  Flapjack.Exp.rStruct
    [Flapjack.Exp.const 16134479119472337056#64, Flapjack.Exp.const 6725966010171805725#64,
      Flapjack.Exp.const 18446744073709551615#64, Flapjack.Exp.const 9223372036854775807#64]]) globalBody340_51

def globalBody340_53 : Prog (BitVec 64) :=
.seq globalBody340_8 globalBody340_52

def globalBody340_54 : Prog (BitVec 64) :=
.decCall ("lt") (Flapjack.Shape.one) ("u256_lt") ([Flapjack.Exp.var Flapjack.VarKind.local "r",
  Flapjack.Exp.rStruct
    [Flapjack.Exp.const 13822214165235122497#64, Flapjack.Exp.const 13451932020343611451#64,
      Flapjack.Exp.const 18446744073709551614#64, Flapjack.Exp.const 18446744073709551615#64]]) globalBody340_53

def globalBody340_55 : Prog (BitVec 64) :=
.seq globalBody340_2 globalBody340_54

def globalBody340_56 : Prog (BitVec 64) :=
.decCall ("z") (Flapjack.Shape.one) ("u256_is_zero") ([Flapjack.Exp.var Flapjack.VarKind.local "r"]) globalBody340_55

def globalBody340_57 : Prog (BitVec 64) :=
.dec ("s") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.load (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 352#64])) globalBody340_56

def globalBody340_58 : Prog (BitVec 64) :=
.dec ("r") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.load (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 320#64])) globalBody340_57

def globalData340 : Decl (BitVec 64) :=
.function { name := "signature_recovery_parameters", inline := false, exported := false, params := [("tx", Flapjack.Shape.one), ("chain_id", Flapjack.Shape.one), ("out_hash", Flapjack.Shape.one)], body := globalBody340_58, returnShape := (Flapjack.Shape.one) }
def globalOutput340 := Pancake.PanLang.declToHOL globalData340
end InitECandidate.Proofs.FrontendStages.Declarations
