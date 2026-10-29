import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify900
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body916_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.var Flapjack.VarKind.local "nd", Flapjack.Exp.var Flapjack.VarKind.local "dep",
    Flapjack.Exp.var Flapjack.VarKind.local "dep_n"]

def body916_1 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "dep" (Flapjack.Exp.var Flapjack.VarKind.local "nd")

def body916_2 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "dep_cap"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "dep_cap", Flapjack.Exp.const 2#64],
      Flapjack.Exp.const 1024#64])

def body916_3 : Prog (BitVec 64) :=
.seq body916_1 body916_2

def body916_4 : Prog (BitVec 64) :=
.seq body916_0 body916_3

def body916_5 : Prog (BitVec 64) :=
.decCall ("nd") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "dep_cap", Flapjack.Exp.const 2#64],
      Flapjack.Exp.const 1024#64]]) body916_4

def body916_6 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body916_7 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "dep_cap")
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "dep_n", Flapjack.Exp.const 192#64])) body916_5 body916_6

def body916_8 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "extract_deposit_data"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "log", Flapjack.Exp.const 24#64]),
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "log", Flapjack.Exp.const 32#64]),
    Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "dep", Flapjack.Exp.var Flapjack.VarKind.local "dep_n"]]

def body916_9 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "dep_n"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "dep_n", Flapjack.Exp.const 192#64])

def body916_10 : Prog (BitVec 64) :=
.seq body916_8 body916_9

def body916_11 : Prog (BitVec 64) :=
.seq body916_7 body916_10

def body916_12 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "sig") (Flapjack.Exp.const 0#64)) body916_11 body916_6

def body916_13 : Prog (BitVec 64) :=
.decCall ("sig") (Flapjack.Shape.one) ("memeq") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "log", Flapjack.Exp.const 8#64]),
  Flapjack.Exp.var Flapjack.VarKind.global "deposit_event_signature_hash", Flapjack.Exp.const 32#64]) body916_12

def body916_14 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.const 0#64)
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "log", Flapjack.Exp.const 16#64]))) body916_13 body916_6

def body916_15 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "isdep") (Flapjack.Exp.const 0#64)) body916_14 body916_6

def body916_16 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "j"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "j", Flapjack.Exp.const 1#64])

def body916_17 : Prog (BitVec 64) :=
.seq body916_15 body916_16

def body916_18 : Prog (BitVec 64) :=
.decCall ("isdep") (Flapjack.Shape.one) ("memeq") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "log", Flapjack.Exp.const 0#64]),
  Flapjack.Exp.var Flapjack.VarKind.global "deposit_contract_address", Flapjack.Exp.const 20#64]) body916_17

def body916_19 : Prog (BitVec 64) :=
.dec ("log") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "lp",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "j", Flapjack.Exp.const 8#64]])) body916_18

def body916_20 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "j")
  (Flapjack.Exp.var Flapjack.VarKind.local "nl")) body916_19

def body916_21 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64])

def body916_22 : Prog (BitVec 64) :=
.seq body916_20 body916_21

def body916_23 : Prog (BitVec 64) :=
.dec ("j") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body916_22

def body916_24 : Prog (BitVec 64) :=
.dec ("lp") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "logs", Flapjack.Exp.const 0#64])) body916_23

def body916_25 : Prog (BitVec 64) :=
.dec ("nl") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "logs", Flapjack.Exp.const 8#64])) body916_24

def body916_26 : Prog (BitVec 64) :=
.dec ("logs") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "rp",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 8#64]])) body916_25

def body916_27 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "nr")) body916_26

def body916_28 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "requests_append"
  [Flapjack.Exp.const 0#64, Flapjack.Exp.var Flapjack.VarKind.local "dep",
    Flapjack.Exp.var Flapjack.VarKind.local "dep_n"]

def body916_29 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.const 0#64) (Flapjack.Exp.var Flapjack.VarKind.local "dep_n")) body916_28 body916_6

def body916_30 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "requests_append"
  [Flapjack.Exp.const 1#64,
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "o1", Flapjack.Exp.const 40#64]),
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "o1", Flapjack.Exp.const 48#64])]

def body916_31 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.const 0#64)
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "o1", Flapjack.Exp.const 48#64]))) body916_30 body916_6

def body916_32 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "requests_append"
  [Flapjack.Exp.const 2#64,
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "o2", Flapjack.Exp.const 40#64]),
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "o2", Flapjack.Exp.const 48#64])]

def body916_33 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.const 0#64)
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "o2", Flapjack.Exp.const 48#64]))) body916_32 body916_6

def body916_34 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "requests_append"
  [Flapjack.Exp.const 3#64,
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "o3", Flapjack.Exp.const 40#64]),
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "o3", Flapjack.Exp.const 48#64])]

def body916_35 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.const 0#64)
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "o3", Flapjack.Exp.const 48#64]))) body916_34 body916_6

def body916_36 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "requests_append"
  [Flapjack.Exp.const 4#64,
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "o4", Flapjack.Exp.const 40#64]),
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "o4", Flapjack.Exp.const 48#64])]

def body916_37 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.const 0#64)
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "o4", Flapjack.Exp.const 48#64]))) body916_36 body916_6

def body916_38 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body916_39 : Prog (BitVec 64) :=
.seq body916_37 body916_38

def body916_40 : Prog (BitVec 64) :=
.decCall ("o4") (Flapjack.Shape.one) ("process_checked_system_transaction") ([Flapjack.Exp.var Flapjack.VarKind.global "builder_exit_address"]) body916_39

def body916_41 : Prog (BitVec 64) :=
.seq body916_35 body916_40

def body916_42 : Prog (BitVec 64) :=
.decCall ("o3") (Flapjack.Shape.one) ("process_checked_system_transaction") ([Flapjack.Exp.var Flapjack.VarKind.global "builder_deposit_address"]) body916_41

def body916_43 : Prog (BitVec 64) :=
.seq body916_33 body916_42

def body916_44 : Prog (BitVec 64) :=
.decCall ("o2") (Flapjack.Shape.one) ("process_checked_system_transaction") ([Flapjack.Exp.var Flapjack.VarKind.global "consolidation_request_address"]) body916_43

def body916_45 : Prog (BitVec 64) :=
.seq body916_31 body916_44

def body916_46 : Prog (BitVec 64) :=
.decCall ("o1") (Flapjack.Shape.one) ("process_checked_system_transaction") ([Flapjack.Exp.var Flapjack.VarKind.global "withdrawal_request_address"]) body916_45

def body916_47 : Prog (BitVec 64) :=
.seq body916_29 body916_46

def body916_48 : Prog (BitVec 64) :=
.seq body916_27 body916_47

def body916_49 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body916_48

def body916_50 : Prog (BitVec 64) :=
.dec ("dep_cap") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body916_49

def body916_51 : Prog (BitVec 64) :=
.dec ("dep_n") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body916_50

def body916_52 : Prog (BitVec 64) :=
.decCall ("dep") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 8#64]) body916_51

def body916_53 : Prog (BitVec 64) :=
.dec ("rp") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "rls", Flapjack.Exp.const 0#64])) body916_52

def body916_54 : Prog (BitVec 64) :=
.dec ("nr") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "rls", Flapjack.Exp.const 8#64])) body916_53

def body916_55 : Prog (BitVec 64) :=
.dec ("rls") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bo", Flapjack.Exp.const 72#64])) body916_54

def body916_56 : Prog (BitVec 64) :=
.seq body916_0 body916_1

def body916_57 : Prog (BitVec 64) :=
.seq body916_56 body916_2

def body916_58 : Prog (BitVec 64) :=
.decCall ("nd") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "dep_cap", Flapjack.Exp.const 2#64],
      Flapjack.Exp.const 1024#64]]) body916_57

def body916_59 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "dep_cap")
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "dep_n", Flapjack.Exp.const 192#64])) body916_58 body916_6

def body916_60 : Prog (BitVec 64) :=
.seq body916_59 body916_8

def body916_61 : Prog (BitVec 64) :=
.seq body916_60 body916_9

def body916_62 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "sig") (Flapjack.Exp.const 0#64)) body916_61 body916_6

def body916_63 : Prog (BitVec 64) :=
.decCall ("sig") (Flapjack.Shape.one) ("memeq") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "log", Flapjack.Exp.const 8#64]),
  Flapjack.Exp.var Flapjack.VarKind.global "deposit_event_signature_hash", Flapjack.Exp.const 32#64]) body916_62

def body916_64 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.const 0#64)
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "log", Flapjack.Exp.const 16#64]))) body916_63 body916_6

def body916_65 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "isdep") (Flapjack.Exp.const 0#64)) body916_64 body916_6

def body916_66 : Prog (BitVec 64) :=
.seq body916_65 body916_16

def body916_67 : Prog (BitVec 64) :=
.decCall ("isdep") (Flapjack.Shape.one) ("memeq") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "log", Flapjack.Exp.const 0#64]),
  Flapjack.Exp.var Flapjack.VarKind.global "deposit_contract_address", Flapjack.Exp.const 20#64]) body916_66

def body916_68 : Prog (BitVec 64) :=
.dec ("log") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "lp",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "j", Flapjack.Exp.const 8#64]])) body916_67

def body916_69 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "j")
  (Flapjack.Exp.var Flapjack.VarKind.local "nl")) body916_68

def body916_70 : Prog (BitVec 64) :=
.seq body916_69 body916_21

def body916_71 : Prog (BitVec 64) :=
.dec ("j") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body916_70

def body916_72 : Prog (BitVec 64) :=
.dec ("lp") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "logs", Flapjack.Exp.const 0#64])) body916_71

def body916_73 : Prog (BitVec 64) :=
.dec ("nl") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "logs", Flapjack.Exp.const 8#64])) body916_72

def body916_74 : Prog (BitVec 64) :=
.dec ("logs") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "rp",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 8#64]])) body916_73

def body916_75 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "nr")) body916_74

def body916_76 : Prog (BitVec 64) :=
.seq body916_75 body916_29

def body916_77 : Prog (BitVec 64) :=
.seq body916_76 body916_46

def body916_78 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body916_77

def body916_79 : Prog (BitVec 64) :=
.dec ("dep_cap") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body916_78

def body916_80 : Prog (BitVec 64) :=
.dec ("dep_n") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body916_79

def body916_81 : Prog (BitVec 64) :=
.decCall ("dep") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 8#64]) body916_80

def body916_82 : Prog (BitVec 64) :=
.dec ("rp") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "rls", Flapjack.Exp.const 0#64])) body916_81

def body916_83 : Prog (BitVec 64) :=
.dec ("nr") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "rls", Flapjack.Exp.const 8#64])) body916_82

def body916_84 : Prog (BitVec 64) :=
.dec ("rls") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bo", Flapjack.Exp.const 72#64])) body916_83

def originalData916 : Decl (BitVec 64) :=
.function { name := "process_general_purpose_requests", inline := false, exported := false, params := [], body := body916_55, returnShape := (Flapjack.Shape.one) }
def simplifiedData916 : Decl (BitVec 64) :=
.function { name := "process_general_purpose_requests", inline := false, exported := false, params := [], body := body916_84, returnShape := (Flapjack.Shape.one) }
def original916 := Pancake.PanLang.declToHOL originalData916
def simplified916 := Pancake.PanLang.declToHOL simplifiedData916
end InitECandidate.Proofs.FrontendStages.Declarations
