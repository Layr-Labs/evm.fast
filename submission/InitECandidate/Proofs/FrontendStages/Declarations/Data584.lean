import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify568
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body584_0 : Prog (BitVec 64) :=
Flapjack.Prog.call
  (some
    (none,
      some
        ("EvmErr", "err",
          Flapjack.Prog.seq
            (Flapjack.Prog.call (some (none, none)) "state_restore" [Flapjack.Exp.var Flapjack.VarKind.local "csnap"])
            (Flapjack.Prog.seq (Flapjack.Prog.call (some (none, none)) "refill_frame_state_gas" [])
              (Flapjack.Prog.seq
                (Flapjack.Prog.call (some (none, none)) "frame_halt" [Flapjack.Exp.var Flapjack.VarKind.local "err"])
                (Flapjack.Prog.seq
                  (Flapjack.Prog.store
                    (Flapjack.Exp.op Flapjack.BinOp.add
                      [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 120#64])
                    (Flapjack.Exp.var Flapjack.VarKind.global "evm_empty"))
                  (Flapjack.Prog.store
                    (Flapjack.Exp.op Flapjack.BinOp.add
                      [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 128#64])
                    (Flapjack.Exp.const 0#64))))))))
  "create_finish" [Flapjack.Exp.var Flapjack.VarKind.local "msg", Flapjack.Exp.var Flapjack.VarKind.local "child"]

def body584_1 : Prog (BitVec 64) :=
.dec ("err") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body584_0

def body584_2 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "state_restore" [Flapjack.Exp.var Flapjack.VarKind.local "csnap"]

def body584_3 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "child", Flapjack.Exp.const 160#64]))
  (Flapjack.Exp.const 0#64)) body584_1 body584_2

def body584_4 : Prog (BitVec 64) :=
.dec ("csnap") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "rec", Flapjack.Exp.const 96#64])) body584_3

def body584_5 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body584_6 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "kind") (Flapjack.Exp.const 2#64)) body584_4 body584_5

def body584_7 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.global "ev" (Flapjack.Exp.var Flapjack.VarKind.local "parent")

def body584_8 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.global "cur_cont"
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "rec", Flapjack.Exp.const 8#64]))

def body584_9 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "rollback_child_access" [Flapjack.Exp.var Flapjack.VarKind.local "child"]

def body584_10 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "incorporate_child_on_error" [Flapjack.Exp.var Flapjack.VarKind.local "child"]

def body584_11 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "credit_state_gas_refund" [Flapjack.Exp.const 183600#64]

def body584_12 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "new_account_charged")
  (Flapjack.Exp.const 0#64)) body584_11 body584_5

def body584_13 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "set_retdata"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "child", Flapjack.Exp.const 120#64]),
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "child", Flapjack.Exp.const 128#64])]

def body584_14 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "stack_push"
  [Flapjack.Exp.rStruct
      [Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64]]

def body584_15 : Prog (BitVec 64) :=
.seq body584_13 body584_14

def body584_16 : Prog (BitVec 64) :=
.seq body584_12 body584_15

def body584_17 : Prog (BitVec 64) :=
.seq body584_10 body584_16

def body584_18 : Prog (BitVec 64) :=
.seq body584_9 body584_17

def body584_19 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "incorporate_child_on_success" [Flapjack.Exp.var Flapjack.VarKind.local "child"]

def body584_20 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "set_retdata"
  [Flapjack.Exp.var Flapjack.VarKind.local "empty", Flapjack.Exp.const 0#64]

def body584_21 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "stack_push" [Flapjack.Exp.var Flapjack.VarKind.local "av"]

def body584_22 : Prog (BitVec 64) :=
.decCall ("av") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("address_to_u256") ([Flapjack.Exp.var Flapjack.VarKind.local "contract_address"]) body584_21

def body584_23 : Prog (BitVec 64) :=
.seq body584_20 body584_22

def body584_24 : Prog (BitVec 64) :=
.seq body584_19 body584_23

def body584_25 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "child", Flapjack.Exp.const 160#64]))
  (Flapjack.Exp.const 0#64)) body584_18 body584_24

def body584_26 : Prog (BitVec 64) :=
.dec ("empty") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.global "evm_empty") body584_25

def body584_27 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "stack_push"
  [Flapjack.Exp.rStruct
      [Flapjack.Exp.const 1#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64]]

def body584_28 : Prog (BitVec 64) :=
.seq body584_13 body584_27

def body584_29 : Prog (BitVec 64) :=
.seq body584_19 body584_28

def body584_30 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "child", Flapjack.Exp.const 160#64]))
  (Flapjack.Exp.const 0#64)) body584_18 body584_29

def body584_31 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.load Flapjack.Shape.one
          (Flapjack.Exp.op Flapjack.BinOp.add
            [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 24#64]),
        Flapjack.Exp.var Flapjack.VarKind.local "out_start"],
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 144#64]),
    Flapjack.Exp.var Flapjack.VarKind.local "actual"]

def body584_32 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "actual") (Flapjack.Exp.const 0#64)) body584_31 body584_5

def body584_33 : Prog (BitVec 64) :=
.decCall ("actual") (Flapjack.Shape.one) ("min") ([Flapjack.Exp.var Flapjack.VarKind.local "out_size",
  Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "child", Flapjack.Exp.const 128#64])]) body584_32

def body584_34 : Prog (BitVec 64) :=
.seq body584_30 body584_33

def body584_35 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "kind") (Flapjack.Exp.const 2#64)) body584_26 body584_34

def body584_36 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "scratch_release" [Flapjack.Exp.var Flapjack.VarKind.local "child_mark"]

def body584_37 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "frame_mem_release" [Flapjack.Exp.var Flapjack.VarKind.local "child_mem_mark"]

def body584_38 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "pc_add" [Flapjack.Exp.const 1#64]

def body584_39 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body584_40 : Prog (BitVec 64) :=
.seq body584_38 body584_39

def body584_41 : Prog (BitVec 64) :=
.seq body584_37 body584_40

def body584_42 : Prog (BitVec 64) :=
.seq body584_36 body584_41

def body584_43 : Prog (BitVec 64) :=
.seq body584_35 body584_42

def body584_44 : Prog (BitVec 64) :=
.seq body584_8 body584_43

def body584_45 : Prog (BitVec 64) :=
.seq body584_7 body584_44

def body584_46 : Prog (BitVec 64) :=
.seq body584_6 body584_45

def body584_47 : Prog (BitVec 64) :=
.dec ("contract_address") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "rec", Flapjack.Exp.const 88#64])) body584_46

def body584_48 : Prog (BitVec 64) :=
.dec ("out_size") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "rec", Flapjack.Exp.const 80#64])) body584_47

def body584_49 : Prog (BitVec 64) :=
.dec ("out_start") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "rec", Flapjack.Exp.const 72#64])) body584_48

def body584_50 : Prog (BitVec 64) :=
.dec ("child_mem_mark") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "rec", Flapjack.Exp.const 56#64])) body584_49

def body584_51 : Prog (BitVec 64) :=
.dec ("child_mark") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "rec", Flapjack.Exp.const 48#64])) body584_50

def body584_52 : Prog (BitVec 64) :=
.dec ("new_account_charged") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "rec", Flapjack.Exp.const 64#64])) body584_51

def body584_53 : Prog (BitVec 64) :=
.dec ("msg") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "rec", Flapjack.Exp.const 40#64])) body584_52

def body584_54 : Prog (BitVec 64) :=
.dec ("kind") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "rec", Flapjack.Exp.const 16#64])) body584_53

def body584_55 : Prog (BitVec 64) :=
.dec ("parent") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "rec", Flapjack.Exp.const 0#64])) body584_54

def body584_56 : Prog (BitVec 64) :=
.dec ("child") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.global "ev") body584_55

def body584_57 : Prog (BitVec 64) :=
.dec ("rec") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.global "cur_cont") body584_56

def body584_58 : Prog (BitVec 64) :=
Flapjack.Prog.call
  (some
    (none,
      some
        ("EvmErr", "err",
          Flapjack.Prog.seq
            (Flapjack.Prog.seq
              (Flapjack.Prog.seq
                (Flapjack.Prog.seq
                  (Flapjack.Prog.call (some (none, none)) "state_restore"
                    [Flapjack.Exp.var Flapjack.VarKind.local "csnap"])
                  (Flapjack.Prog.call (some (none, none)) "refill_frame_state_gas" []))
                (Flapjack.Prog.call (some (none, none)) "frame_halt" [Flapjack.Exp.var Flapjack.VarKind.local "err"]))
              (Flapjack.Prog.store
                (Flapjack.Exp.op Flapjack.BinOp.add
                  [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 120#64])
                (Flapjack.Exp.var Flapjack.VarKind.global "evm_empty")))
            (Flapjack.Prog.store
              (Flapjack.Exp.op Flapjack.BinOp.add
                [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 128#64])
              (Flapjack.Exp.const 0#64)))))
  "create_finish" [Flapjack.Exp.var Flapjack.VarKind.local "msg", Flapjack.Exp.var Flapjack.VarKind.local "child"]

def body584_59 : Prog (BitVec 64) :=
.dec ("err") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body584_58

def body584_60 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "child", Flapjack.Exp.const 160#64]))
  (Flapjack.Exp.const 0#64)) body584_59 body584_2

def body584_61 : Prog (BitVec 64) :=
.dec ("csnap") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "rec", Flapjack.Exp.const 96#64])) body584_60

def body584_62 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "kind") (Flapjack.Exp.const 2#64)) body584_61 body584_5

def body584_63 : Prog (BitVec 64) :=
.seq body584_62 body584_7

def body584_64 : Prog (BitVec 64) :=
.seq body584_63 body584_8

def body584_65 : Prog (BitVec 64) :=
.seq body584_9 body584_10

def body584_66 : Prog (BitVec 64) :=
.seq body584_65 body584_12

def body584_67 : Prog (BitVec 64) :=
.seq body584_66 body584_13

def body584_68 : Prog (BitVec 64) :=
.seq body584_67 body584_14

def body584_69 : Prog (BitVec 64) :=
.seq body584_19 body584_20

def body584_70 : Prog (BitVec 64) :=
.seq body584_69 body584_22

def body584_71 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "child", Flapjack.Exp.const 160#64]))
  (Flapjack.Exp.const 0#64)) body584_68 body584_70

def body584_72 : Prog (BitVec 64) :=
.dec ("empty") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.global "evm_empty") body584_71

def body584_73 : Prog (BitVec 64) :=
.seq body584_19 body584_13

def body584_74 : Prog (BitVec 64) :=
.seq body584_73 body584_27

def body584_75 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "child", Flapjack.Exp.const 160#64]))
  (Flapjack.Exp.const 0#64)) body584_68 body584_74

def body584_76 : Prog (BitVec 64) :=
.seq body584_75 body584_33

def body584_77 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "kind") (Flapjack.Exp.const 2#64)) body584_72 body584_76

def body584_78 : Prog (BitVec 64) :=
.seq body584_64 body584_77

def body584_79 : Prog (BitVec 64) :=
.seq body584_78 body584_36

def body584_80 : Prog (BitVec 64) :=
.seq body584_79 body584_37

def body584_81 : Prog (BitVec 64) :=
.seq body584_80 body584_38

def body584_82 : Prog (BitVec 64) :=
.seq body584_81 body584_39

def body584_83 : Prog (BitVec 64) :=
.dec ("contract_address") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "rec", Flapjack.Exp.const 88#64])) body584_82

def body584_84 : Prog (BitVec 64) :=
.dec ("out_size") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "rec", Flapjack.Exp.const 80#64])) body584_83

def body584_85 : Prog (BitVec 64) :=
.dec ("out_start") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "rec", Flapjack.Exp.const 72#64])) body584_84

def body584_86 : Prog (BitVec 64) :=
.dec ("child_mem_mark") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "rec", Flapjack.Exp.const 56#64])) body584_85

def body584_87 : Prog (BitVec 64) :=
.dec ("child_mark") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "rec", Flapjack.Exp.const 48#64])) body584_86

def body584_88 : Prog (BitVec 64) :=
.dec ("new_account_charged") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "rec", Flapjack.Exp.const 64#64])) body584_87

def body584_89 : Prog (BitVec 64) :=
.dec ("msg") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "rec", Flapjack.Exp.const 40#64])) body584_88

def body584_90 : Prog (BitVec 64) :=
.dec ("kind") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "rec", Flapjack.Exp.const 16#64])) body584_89

def body584_91 : Prog (BitVec 64) :=
.dec ("parent") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "rec", Flapjack.Exp.const 0#64])) body584_90

def body584_92 : Prog (BitVec 64) :=
.dec ("child") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.global "ev") body584_91

def body584_93 : Prog (BitVec 64) :=
.dec ("rec") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.global "cur_cont") body584_92

def originalData584 : Decl (BitVec 64) :=
.function { name := "finish_child", inline := false, exported := false, params := [], body := body584_57, returnShape := (Flapjack.Shape.one) }
def simplifiedData584 : Decl (BitVec 64) :=
.function { name := "finish_child", inline := false, exported := false, params := [], body := body584_93, returnShape := (Flapjack.Shape.one) }
def original584 := Pancake.PanLang.declToHOL originalData584
def simplified584 := Pancake.PanLang.declToHOL simplifiedData584
end InitECandidate.Proofs.FrontendStages.Declarations
