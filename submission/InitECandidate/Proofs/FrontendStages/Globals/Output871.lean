import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data871
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate838
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody871_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "state_fresh_tx" []

def globalBody871_1 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "te", Flapjack.Exp.const 0#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 304#64]))

def globalBody871_2 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "te", Flapjack.Exp.const 8#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "target")

def globalBody871_3 : Prog (BitVec 64) :=
.seq globalBody871_1 globalBody871_2

def globalBody871_4 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "te", Flapjack.Exp.const 48#64])
  (Flapjack.Exp.load
    (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.load Flapjack.Shape.one
          (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 408#64]),
        Flapjack.Exp.const 48#64]))

def globalBody871_5 : Prog (BitVec 64) :=
.seq globalBody871_3 globalBody871_4

def globalBody871_6 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "te", Flapjack.Exp.const 80#64])
  (Flapjack.Exp.const 30000000#64)

def globalBody871_7 : Prog (BitVec 64) :=
.seq globalBody871_5 globalBody871_6

def globalBody871_8 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "te", Flapjack.Exp.const 88#64])
  (Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 97920#64, Flapjack.Exp.const 16#64])

def globalBody871_9 : Prog (BitVec 64) :=
.seq globalBody871_7 globalBody871_8

def globalBody871_10 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 0#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 408#64]))

def globalBody871_11 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 8#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "te")

def globalBody871_12 : Prog (BitVec 64) :=
.seq globalBody871_10 globalBody871_11

def globalBody871_13 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 16#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 304#64]))

def globalBody871_14 : Prog (BitVec 64) :=
.seq globalBody871_12 globalBody871_13

def globalBody871_15 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 24#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "target")

def globalBody871_16 : Prog (BitVec 64) :=
.seq globalBody871_14 globalBody871_15

def globalBody871_17 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 32#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "target")

def globalBody871_18 : Prog (BitVec 64) :=
.seq globalBody871_16 globalBody871_17

def globalBody871_19 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 40#64])
  (Flapjack.Exp.const 30000000#64)

def globalBody871_20 : Prog (BitVec 64) :=
.seq globalBody871_18 globalBody871_19

def globalBody871_21 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 48#64])
  (Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 97920#64, Flapjack.Exp.const 16#64])

def globalBody871_22 : Prog (BitVec 64) :=
.seq globalBody871_20 globalBody871_21

def globalBody871_23 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 88#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "data")

def globalBody871_24 : Prog (BitVec 64) :=
.seq globalBody871_22 globalBody871_23

def globalBody871_25 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 96#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "data_n")

def globalBody871_26 : Prog (BitVec 64) :=
.seq globalBody871_24 globalBody871_25

def globalBody871_27 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 104#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "target")

def globalBody871_28 : Prog (BitVec 64) :=
.seq globalBody871_26 globalBody871_27

def globalBody871_29 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 112#64])
  (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "code"))

def globalBody871_30 : Prog (BitVec 64) :=
.seq globalBody871_28 globalBody871_29

def globalBody871_31 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 120#64])
  (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "code"))

def globalBody871_32 : Prog (BitVec 64) :=
.seq globalBody871_30 globalBody871_31

def globalBody871_33 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 152#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "aa")

def globalBody871_34 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 160#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "ak")

def globalBody871_35 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "incorporate_tx_into_block" []

def globalBody871_36 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.var Flapjack.VarKind.local "system_ret",
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 40#64]),
    Flapjack.Exp.var Flapjack.VarKind.local "system_ret_n"]

def globalBody871_37 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 40#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "system_ret")

def globalBody871_38 : Prog (BitVec 64) :=
.seq globalBody871_36 globalBody871_37

def globalBody871_39 : Prog (BitVec 64) :=
.decCall ("system_ret") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "system_ret_n", Flapjack.Exp.const 8#64]]) globalBody871_38

def globalBody871_40 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody871_41 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.const 0#64) (Flapjack.Exp.var Flapjack.VarKind.local "system_ret_n")) globalBody871_39 globalBody871_40

def globalBody871_42 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "scratch_release" [Flapjack.Exp.var Flapjack.VarKind.local "system_mark"]

def globalBody871_43 : Prog (BitVec 64) :=
.seq globalBody871_41 globalBody871_42

def globalBody871_44 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "frame_mem_release"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 88#64])]

def globalBody871_45 : Prog (BitVec 64) :=
.seq globalBody871_43 globalBody871_44

def globalBody871_46 : Prog (BitVec 64) :=
.dec ("system_ret_n") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 48#64])) globalBody871_45

def globalBody871_47 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "system_mark") (Flapjack.Exp.const 0#64)) globalBody871_46 globalBody871_40

def globalBody871_48 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "out")

def globalBody871_49 : Prog (BitVec 64) :=
.seq globalBody871_47 globalBody871_48

def globalBody871_50 : Prog (BitVec 64) :=
.dec ("system_mark") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 80#64])) globalBody871_49

def globalBody871_51 : Prog (BitVec 64) :=
.seq globalBody871_35 globalBody871_50

def globalBody871_52 : Prog (BitVec 64) :=
.decCall ("out") (Flapjack.Shape.one) ("process_message_call") ([Flapjack.Exp.var Flapjack.VarKind.local "m"]) globalBody871_51

def globalBody871_53 : Prog (BitVec 64) :=
.seq globalBody871_34 globalBody871_52

def globalBody871_54 : Prog (BitVec 64) :=
.decCall ("ak") (Flapjack.Shape.one) ("htab_new") ([Flapjack.Exp.const 52#64, Flapjack.Exp.const 8#64]) globalBody871_53

def globalBody871_55 : Prog (BitVec 64) :=
.seq globalBody871_33 globalBody871_54

def globalBody871_56 : Prog (BitVec 64) :=
.decCall ("aa") (Flapjack.Shape.one) ("htab_new") ([Flapjack.Exp.const 20#64, Flapjack.Exp.const 8#64]) globalBody871_55

def globalBody871_57 : Prog (BitVec 64) :=
.seq globalBody871_32 globalBody871_56

def globalBody871_58 : Prog (BitVec 64) :=
.decCall ("m") (Flapjack.Shape.one) ("msg_new") ([]) globalBody871_57

def globalBody871_59 : Prog (BitVec 64) :=
.seq globalBody871_9 globalBody871_58

def globalBody871_60 : Prog (BitVec 64) :=
.decCall ("te") (Flapjack.Shape.one) ("te_new") ([]) globalBody871_59

def globalBody871_61 : Prog (BitVec 64) :=
.decCall ("code") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("ext_code_of") ([Flapjack.Exp.var Flapjack.VarKind.local "target"]) globalBody871_60

def globalBody871_62 : Prog (BitVec 64) :=
.seq globalBody871_0 globalBody871_61

def globalData871 : Decl (BitVec 64) :=
.function { name := "process_unchecked_system_transaction", inline := false, exported := false, params := [("target", Flapjack.Shape.one), ("data", Flapjack.Shape.one), ("data_n", Flapjack.Shape.one)], body := globalBody871_62, returnShape := (Flapjack.Shape.one) }
def globalOutput871 := Pancake.PanLang.declToHOL globalData871
end InitECandidate.Proofs.FrontendStages.Declarations
