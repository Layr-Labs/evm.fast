import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data608
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate592
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody608_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memzero"
  [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 96#64]

def globalBody608_1 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 32#64])
  (Flapjack.Exp.const 12#64)

def globalBody608_2 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 56#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "msg", Flapjack.Exp.const 48#64]))

def globalBody608_3 : Prog (BitVec 64) :=
.seq globalBody608_1 globalBody608_2

def globalBody608_4 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 64#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "msg", Flapjack.Exp.const 40#64]))

def globalBody608_5 : Prog (BitVec 64) :=
.seq globalBody608_3 globalBody608_4

def globalBody608_6 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 40#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 264#64]))

def globalBody608_7 : Prog (BitVec 64) :=
.seq globalBody608_5 globalBody608_6

def globalBody608_8 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "out")

def globalBody608_9 : Prog (BitVec 64) :=
.seq globalBody608_7 globalBody608_8

def globalBody608_10 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody608_11 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "dep") (Flapjack.Exp.const 0#64)) globalBody608_9 globalBody608_10

def globalBody608_12 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "frame"), none)) "process_create_message"
  [Flapjack.Exp.var Flapjack.VarKind.local "msg"]

def globalBody608_13 : Prog (BitVec 64) :=
.seq globalBody608_11 globalBody608_12

def globalBody608_14 : Prog (BitVec 64) :=
.decCall ("dep") (Flapjack.Shape.one) ("account_deployable") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "msg", Flapjack.Exp.const 32#64])]) globalBody608_13

def globalBody608_15 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "frame"), none)) "process_message"
  [Flapjack.Exp.var Flapjack.VarKind.local "msg"]

def globalBody608_16 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "msg", Flapjack.Exp.const 24#64]))
  (Flapjack.Exp.const 0#64)) globalBody608_14 globalBody608_15

def globalBody608_17 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 0#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "frame", Flapjack.Exp.const 64#64]))

def globalBody608_18 : Prog (BitVec 64) :=
.seq globalBody608_16 globalBody608_17

def globalBody608_19 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 32#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "frame", Flapjack.Exp.const 160#64]))

def globalBody608_20 : Prog (BitVec 64) :=
.seq globalBody608_18 globalBody608_19

def globalBody608_21 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 40#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "frame", Flapjack.Exp.const 120#64]))

def globalBody608_22 : Prog (BitVec 64) :=
.seq globalBody608_20 globalBody608_21

def globalBody608_23 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 48#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "frame", Flapjack.Exp.const 128#64]))

def globalBody608_24 : Prog (BitVec 64) :=
.seq globalBody608_22 globalBody608_23

def globalBody608_25 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 56#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "frame", Flapjack.Exp.const 72#64]))

def globalBody608_26 : Prog (BitVec 64) :=
.seq globalBody608_24 globalBody608_25

def globalBody608_27 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 64#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "frame", Flapjack.Exp.const 184#64]))

def globalBody608_28 : Prog (BitVec 64) :=
.seq globalBody608_26 globalBody608_27

def globalBody608_29 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 72#64])
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "fsg",
      Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add
          [Flapjack.Exp.var Flapjack.VarKind.local "frame", Flapjack.Exp.const 200#64])])

def globalBody608_30 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 16#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "frame", Flapjack.Exp.const 88#64]))

def globalBody608_31 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 24#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "frame", Flapjack.Exp.const 136#64]))

def globalBody608_32 : Prog (BitVec 64) :=
.seq globalBody608_30 globalBody608_31

def globalBody608_33 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "rc" (Flapjack.Exp.const 0#64)

def globalBody608_34 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "rc") (Flapjack.Exp.const 0#64)) globalBody608_33 globalBody608_10

def globalBody608_35 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 8#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "rc")

def globalBody608_36 : Prog (BitVec 64) :=
.seq globalBody608_34 globalBody608_35

def globalBody608_37 : Prog (BitVec 64) :=
.dec ("rc") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "frame", Flapjack.Exp.const 96#64])) globalBody608_36

def globalBody608_38 : Prog (BitVec 64) :=
.seq globalBody608_32 globalBody608_37

def globalBody608_39 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "frame", Flapjack.Exp.const 160#64]))
  (Flapjack.Exp.const 0#64)) globalBody608_38 globalBody608_10

def globalBody608_40 : Prog (BitVec 64) :=
.seq globalBody608_29 globalBody608_39

def globalBody608_41 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 80#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "frame", Flapjack.Exp.const 208#64]))

def globalBody608_42 : Prog (BitVec 64) :=
.seq globalBody608_40 globalBody608_41

def globalBody608_43 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 88#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "frame", Flapjack.Exp.const 224#64]))

def globalBody608_44 : Prog (BitVec 64) :=
.seq globalBody608_42 globalBody608_43

def globalBody608_45 : Prog (BitVec 64) :=
.seq globalBody608_44 globalBody608_8

def globalBody608_46 : Prog (BitVec 64) :=
.decCall ("fsg") (Flapjack.Shape.one) ("frame_state_gas_used") ([Flapjack.Exp.var Flapjack.VarKind.local "frame"]) globalBody608_45

def globalBody608_47 : Prog (BitVec 64) :=
.seq globalBody608_28 globalBody608_46

def globalBody608_48 : Prog (BitVec 64) :=
.dec ("frame") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody608_47

def globalBody608_49 : Prog (BitVec 64) :=
.seq globalBody608_0 globalBody608_48

def globalBody608_50 : Prog (BitVec 64) :=
.decCall ("out") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 96#64]) globalBody608_49

def globalData608 : Decl (BitVec 64) :=
.function { name := "process_message_call", inline := false, exported := false, params := [("msg", Flapjack.Shape.one)], body := globalBody608_50, returnShape := (Flapjack.Shape.one) }
def globalOutput608 := Pancake.PanLang.declToHOL globalData608
end InitECandidate.Proofs.FrontendStages.Declarations
