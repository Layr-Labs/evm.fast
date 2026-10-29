import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify862
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body878_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.var Flapjack.VarKind.local "nd", Flapjack.Exp.var Flapjack.VarKind.local "dep",
    Flapjack.Exp.var Flapjack.VarKind.local "dep_n"]

def body878_1 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "dep" (Flapjack.Exp.var Flapjack.VarKind.local "nd")

def body878_2 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "dep_cap"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "dep_cap", Flapjack.Exp.const 2#64],
      Flapjack.Exp.const 1024#64])

def body878_3 : Prog (BitVec 64) :=
.seq body878_1 body878_2

def body878_4 : Prog (BitVec 64) :=
.seq body878_0 body878_3

def body878_5 : Prog (BitVec 64) :=
.decCall ("nd") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "dep_cap", Flapjack.Exp.const 2#64],
      Flapjack.Exp.const 1024#64]]) body878_4

def body878_6 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body878_7 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "dep_cap")
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "dep_n", Flapjack.Exp.const 192#64])) body878_5 body878_6

def body878_8 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "extract_deposit_data"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "log", Flapjack.Exp.const 24#64]),
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "log", Flapjack.Exp.const 32#64]),
    Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "dep", Flapjack.Exp.var Flapjack.VarKind.local "dep_n"]]

def body878_9 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "dep_n"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "dep_n", Flapjack.Exp.const 192#64])

def body878_10 : Prog (BitVec 64) :=
.seq body878_8 body878_9

def body878_11 : Prog (BitVec 64) :=
.seq body878_7 body878_10

def body878_12 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "sig") (Flapjack.Exp.const 0#64)) body878_11 body878_6

def body878_13 : Prog (BitVec 64) :=
.decCall ("sig") (Flapjack.Shape.one) ("memeq") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "log", Flapjack.Exp.const 8#64]),
  Flapjack.Exp.var Flapjack.VarKind.global "deposit_event_signature_hash", Flapjack.Exp.const 32#64]) body878_12

def body878_14 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.const 0#64)
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "log", Flapjack.Exp.const 16#64]))) body878_13 body878_6

def body878_15 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "isdep") (Flapjack.Exp.const 0#64)) body878_14 body878_6

def body878_16 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "j"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "j", Flapjack.Exp.const 1#64])

def body878_17 : Prog (BitVec 64) :=
.seq body878_15 body878_16

def body878_18 : Prog (BitVec 64) :=
.decCall ("isdep") (Flapjack.Shape.one) ("memeq") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "log", Flapjack.Exp.const 0#64]),
  Flapjack.Exp.var Flapjack.VarKind.global "deposit_contract_address", Flapjack.Exp.const 20#64]) body878_17

def body878_19 : Prog (BitVec 64) :=
.dec ("log") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "lp",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "j", Flapjack.Exp.const 8#64]])) body878_18

def body878_20 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "j")
  (Flapjack.Exp.var Flapjack.VarKind.local "nl")) body878_19

def body878_21 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64])

def body878_22 : Prog (BitVec 64) :=
.seq body878_20 body878_21

def body878_23 : Prog (BitVec 64) :=
.dec ("j") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body878_22

def body878_24 : Prog (BitVec 64) :=
.dec ("lp") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "logs", Flapjack.Exp.const 0#64])) body878_23

def body878_25 : Prog (BitVec 64) :=
.dec ("nl") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "logs", Flapjack.Exp.const 8#64])) body878_24

def body878_26 : Prog (BitVec 64) :=
.dec ("logs") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "rp",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 8#64]])) body878_25

def body878_27 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "nr")) body878_26

def body878_28 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "requests_append"
  [Flapjack.Exp.const 0#64, Flapjack.Exp.var Flapjack.VarKind.local "dep",
    Flapjack.Exp.var Flapjack.VarKind.local "dep_n"]

def body878_29 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.const 0#64) (Flapjack.Exp.var Flapjack.VarKind.local "dep_n")) body878_28 body878_6

def body878_30 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "requests_append"
  [Flapjack.Exp.const 1#64,
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "o1", Flapjack.Exp.const 40#64]),
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "o1", Flapjack.Exp.const 48#64])]

def body878_31 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.const 0#64)
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "o1", Flapjack.Exp.const 48#64]))) body878_30 body878_6

def body878_32 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "requests_append"
  [Flapjack.Exp.const 2#64,
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "o2", Flapjack.Exp.const 40#64]),
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "o2", Flapjack.Exp.const 48#64])]

def body878_33 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.const 0#64)
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "o2", Flapjack.Exp.const 48#64]))) body878_32 body878_6

def body878_34 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "requests_append"
  [Flapjack.Exp.const 3#64,
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "o3", Flapjack.Exp.const 40#64]),
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "o3", Flapjack.Exp.const 48#64])]

def body878_35 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.const 0#64)
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "o3", Flapjack.Exp.const 48#64]))) body878_34 body878_6

def body878_36 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "requests_append"
  [Flapjack.Exp.const 4#64,
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "o4", Flapjack.Exp.const 40#64]),
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "o4", Flapjack.Exp.const 48#64])]

def body878_37 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.const 0#64)
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "o4", Flapjack.Exp.const 48#64]))) body878_36 body878_6

def body878_38 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body878_39 : Prog (BitVec 64) :=
.seq body878_37 body878_38

def body878_40 : Prog (BitVec 64) :=
.decCall ("o4") (Flapjack.Shape.one) ("process_checked_system_transaction") ([Flapjack.Exp.var Flapjack.VarKind.global "builder_exit_address"]) body878_39

def body878_41 : Prog (BitVec 64) :=
.seq body878_35 body878_40

def body878_42 : Prog (BitVec 64) :=
.decCall ("o3") (Flapjack.Shape.one) ("process_checked_system_transaction") ([Flapjack.Exp.var Flapjack.VarKind.global "builder_deposit_address"]) body878_41

def body878_43 : Prog (BitVec 64) :=
.seq body878_33 body878_42

def body878_44 : Prog (BitVec 64) :=
.decCall ("o2") (Flapjack.Shape.one) ("process_checked_system_transaction") ([Flapjack.Exp.var Flapjack.VarKind.global "consolidation_request_address"]) body878_43

def body878_45 : Prog (BitVec 64) :=
.seq body878_31 body878_44

def body878_46 : Prog (BitVec 64) :=
.decCall ("o1") (Flapjack.Shape.one) ("process_checked_system_transaction") ([Flapjack.Exp.var Flapjack.VarKind.global "withdrawal_request_address"]) body878_45

def body878_47 : Prog (BitVec 64) :=
.seq body878_29 body878_46

def body878_48 : Prog (BitVec 64) :=
.seq body878_27 body878_47

def body878_49 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body878_48

def body878_50 : Prog (BitVec 64) :=
.dec ("dep_cap") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body878_49

def body878_51 : Prog (BitVec 64) :=
.dec ("dep_n") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body878_50

def body878_52 : Prog (BitVec 64) :=
.decCall ("dep") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 8#64]) body878_51

def body878_53 : Prog (BitVec 64) :=
.dec ("rp") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "rls", Flapjack.Exp.const 0#64])) body878_52

def body878_54 : Prog (BitVec 64) :=
.dec ("nr") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "rls", Flapjack.Exp.const 8#64])) body878_53

def body878_55 : Prog (BitVec 64) :=
.dec ("rls") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bo", Flapjack.Exp.const 72#64])) body878_54

def body878_56 : Prog (BitVec 64) :=
.seq body878_0 body878_1

def body878_57 : Prog (BitVec 64) :=
.seq body878_56 body878_2

def body878_58 : Prog (BitVec 64) :=
.decCall ("nd") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "dep_cap", Flapjack.Exp.const 2#64],
      Flapjack.Exp.const 1024#64]]) body878_57

def body878_59 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "dep_cap")
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "dep_n", Flapjack.Exp.const 192#64])) body878_58 body878_6

def body878_60 : Prog (BitVec 64) :=
.seq body878_59 body878_8

def body878_61 : Prog (BitVec 64) :=
.seq body878_60 body878_9

def body878_62 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "sig") (Flapjack.Exp.const 0#64)) body878_61 body878_6

def body878_63 : Prog (BitVec 64) :=
.decCall ("sig") (Flapjack.Shape.one) ("memeq") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "log", Flapjack.Exp.const 8#64]),
  Flapjack.Exp.var Flapjack.VarKind.global "deposit_event_signature_hash", Flapjack.Exp.const 32#64]) body878_62

def body878_64 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.const 0#64)
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "log", Flapjack.Exp.const 16#64]))) body878_63 body878_6

def body878_65 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "isdep") (Flapjack.Exp.const 0#64)) body878_64 body878_6

def body878_66 : Prog (BitVec 64) :=
.seq body878_65 body878_16

def body878_67 : Prog (BitVec 64) :=
.decCall ("isdep") (Flapjack.Shape.one) ("memeq") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "log", Flapjack.Exp.const 0#64]),
  Flapjack.Exp.var Flapjack.VarKind.global "deposit_contract_address", Flapjack.Exp.const 20#64]) body878_66

def body878_68 : Prog (BitVec 64) :=
.dec ("log") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "lp",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "j", Flapjack.Exp.const 8#64]])) body878_67

def body878_69 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "j")
  (Flapjack.Exp.var Flapjack.VarKind.local "nl")) body878_68

def body878_70 : Prog (BitVec 64) :=
.seq body878_69 body878_21

def body878_71 : Prog (BitVec 64) :=
.dec ("j") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body878_70

def body878_72 : Prog (BitVec 64) :=
.dec ("lp") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "logs", Flapjack.Exp.const 0#64])) body878_71

def body878_73 : Prog (BitVec 64) :=
.dec ("nl") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "logs", Flapjack.Exp.const 8#64])) body878_72

def body878_74 : Prog (BitVec 64) :=
.dec ("logs") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "rp",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 8#64]])) body878_73

def body878_75 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "nr")) body878_74

def body878_76 : Prog (BitVec 64) :=
.seq body878_75 body878_29

def body878_77 : Prog (BitVec 64) :=
.seq body878_76 body878_46

def body878_78 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body878_77

def body878_79 : Prog (BitVec 64) :=
.dec ("dep_cap") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body878_78

def body878_80 : Prog (BitVec 64) :=
.dec ("dep_n") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body878_79

def body878_81 : Prog (BitVec 64) :=
.decCall ("dep") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 8#64]) body878_80

def body878_82 : Prog (BitVec 64) :=
.dec ("rp") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "rls", Flapjack.Exp.const 0#64])) body878_81

def body878_83 : Prog (BitVec 64) :=
.dec ("nr") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "rls", Flapjack.Exp.const 8#64])) body878_82

def body878_84 : Prog (BitVec 64) :=
.dec ("rls") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bo", Flapjack.Exp.const 72#64])) body878_83

def originalData878 : Decl (BitVec 64) :=
.function { name := "process_general_purpose_requests", inline := false, exported := false, params := [], body := body878_55, returnShape := (Flapjack.Shape.one) }
def simplifiedData878 : Decl (BitVec 64) :=
.function { name := "process_general_purpose_requests", inline := false, exported := false, params := [], body := body878_84, returnShape := (Flapjack.Shape.one) }
def original878 := Pancake.PanLang.declToHOL originalData878
def simplified878 := Pancake.PanLang.declToHOL simplifiedData878
end InitECandidate.Proofs.FrontendStages.Declarations
