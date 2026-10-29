import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data595
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate579
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody595_0 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 0#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "pm", Flapjack.Exp.const 0#64]))

def globalBody595_1 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 8#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "pm", Flapjack.Exp.const 8#64]))

def globalBody595_2 : Prog (BitVec 64) :=
.seq globalBody595_0 globalBody595_1

def globalBody595_3 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 16#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "caller")

def globalBody595_4 : Prog (BitVec 64) :=
.seq globalBody595_2 globalBody595_3

def globalBody595_5 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 24#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "target")

def globalBody595_6 : Prog (BitVec 64) :=
.seq globalBody595_4 globalBody595_5

def globalBody595_7 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 32#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "current_target")

def globalBody595_8 : Prog (BitVec 64) :=
.seq globalBody595_6 globalBody595_7

def globalBody595_9 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 40#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "gas")

def globalBody595_10 : Prog (BitVec 64) :=
.seq globalBody595_8 globalBody595_9

def globalBody595_11 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 48#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "reservoir")

def globalBody595_12 : Prog (BitVec 64) :=
.seq globalBody595_10 globalBody595_11

def globalBody595_13 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 56#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "value")

def globalBody595_14 : Prog (BitVec 64) :=
.seq globalBody595_12 globalBody595_13

def globalBody595_15 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 88#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "data")

def globalBody595_16 : Prog (BitVec 64) :=
.seq globalBody595_14 globalBody595_15

def globalBody595_17 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 96#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "data_n")

def globalBody595_18 : Prog (BitVec 64) :=
.seq globalBody595_16 globalBody595_17

def globalBody595_19 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 104#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "code_address")

def globalBody595_20 : Prog (BitVec 64) :=
.seq globalBody595_18 globalBody595_19

def globalBody595_21 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 112#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "code")

def globalBody595_22 : Prog (BitVec 64) :=
.seq globalBody595_20 globalBody595_21

def globalBody595_23 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 120#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "code_n")

def globalBody595_24 : Prog (BitVec 64) :=
.seq globalBody595_22 globalBody595_23

def globalBody595_25 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 128#64])
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "pm", Flapjack.Exp.const 128#64]),
      Flapjack.Exp.const 1#64])

def globalBody595_26 : Prog (BitVec 64) :=
.seq globalBody595_24 globalBody595_25

def globalBody595_27 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 136#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "transfer")

def globalBody595_28 : Prog (BitVec 64) :=
.seq globalBody595_26 globalBody595_27

def globalBody595_29 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "stat" (Flapjack.Exp.const 1#64)

def globalBody595_30 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody595_31 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "pm", Flapjack.Exp.const 144#64]))
  (Flapjack.Exp.const 0#64)) globalBody595_29 globalBody595_30

def globalBody595_32 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 144#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "stat")

def globalBody595_33 : Prog (BitVec 64) :=
.seq globalBody595_31 globalBody595_32

def globalBody595_34 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 152#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.load Flapjack.Shape.one
          (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 256#64]),
        Flapjack.Exp.const 168#64]))

def globalBody595_35 : Prog (BitVec 64) :=
.seq globalBody595_33 globalBody595_34

def globalBody595_36 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 160#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.load Flapjack.Shape.one
          (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 256#64]),
        Flapjack.Exp.const 176#64]))

def globalBody595_37 : Prog (BitVec 64) :=
.seq globalBody595_35 globalBody595_36

def globalBody595_38 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 168#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "disable_pre")

def globalBody595_39 : Prog (BitVec 64) :=
.seq globalBody595_37 globalBody595_38

def globalBody595_40 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "m")

def globalBody595_41 : Prog (BitVec 64) :=
.seq globalBody595_39 globalBody595_40

def globalBody595_42 : Prog (BitVec 64) :=
.dec ("stat") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.local "is_static") globalBody595_41

def globalBody595_43 : Prog (BitVec 64) :=
.seq globalBody595_28 globalBody595_42

def globalBody595_44 : Prog (BitVec 64) :=
.decCall ("m") (Flapjack.Shape.one) ("msg_new_scratch") ([]) globalBody595_43

def globalBody595_45 : Prog (BitVec 64) :=
.dec ("pm") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 256#64]),
      Flapjack.Exp.const 112#64])) globalBody595_44

def globalData595 : Decl (BitVec 64) :=
.function { name := "child_message", inline := false, exported := false, params := [("caller", Flapjack.Shape.one), ("target", Flapjack.Shape.one), ("current_target", Flapjack.Shape.one),
  ("gas", Flapjack.Shape.one), ("reservoir", Flapjack.Shape.one),
  ("value", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("data", Flapjack.Shape.one), ("data_n", Flapjack.Shape.one), ("code_address", Flapjack.Shape.one),
  ("code", Flapjack.Shape.one), ("code_n", Flapjack.Shape.one), ("transfer", Flapjack.Shape.one),
  ("is_static", Flapjack.Shape.one), ("disable_pre", Flapjack.Shape.one)], body := globalBody595_45, returnShape := (Flapjack.Shape.one) }
def globalOutput595 := Pancake.PanLang.declToHOL globalData595
end InitECandidate.Proofs.FrontendStages.Declarations
