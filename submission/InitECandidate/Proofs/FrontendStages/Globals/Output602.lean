import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data602
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate586
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody602_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "set_retdata"
  [Flapjack.Exp.var Flapjack.VarKind.local "empty", Flapjack.Exp.const 0#64]

def globalBody602_1 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 256#64]),
      Flapjack.Exp.const 64#64])
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add
          [Flapjack.Exp.load Flapjack.Shape.one
              (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 256#64]),
            Flapjack.Exp.const 64#64]),
      Flapjack.Exp.var Flapjack.VarKind.local "gas"])

def globalBody602_2 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 256#64]),
      Flapjack.Exp.const 72#64])
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add
          [Flapjack.Exp.load Flapjack.Shape.one
              (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 256#64]),
            Flapjack.Exp.const 72#64]),
      Flapjack.Exp.var Flapjack.VarKind.local "reservoir"])

def globalBody602_3 : Prog (BitVec 64) :=
.seq globalBody602_1 globalBody602_2

def globalBody602_4 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "credit_state_gas_refund" [Flapjack.Exp.const 183600#64]

def globalBody602_5 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody602_6 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "new_account_charged")
  (Flapjack.Exp.const 0#64)) globalBody602_4 globalBody602_5

def globalBody602_7 : Prog (BitVec 64) :=
.seq globalBody602_3 globalBody602_6

def globalBody602_8 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "stack_push"
  [Flapjack.Exp.rStruct
      [Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64]]

def globalBody602_9 : Prog (BitVec 64) :=
.seq globalBody602_7 globalBody602_8

def globalBody602_10 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody602_11 : Prog (BitVec 64) :=
.seq globalBody602_9 globalBody602_10

def globalBody602_12 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.const 1024#64)
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "msg", Flapjack.Exp.const 128#64]),
      Flapjack.Exp.const 1#64])) globalBody602_11 globalBody602_5

def globalBody602_13 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "start_child"
  [Flapjack.Exp.var Flapjack.VarKind.local "cm", Flapjack.Exp.const 1#64,
    Flapjack.Exp.var Flapjack.VarKind.local "child_mark", Flapjack.Exp.var Flapjack.VarKind.local "child_mem_mark",
    Flapjack.Exp.var Flapjack.VarKind.local "new_account_charged", Flapjack.Exp.var Flapjack.VarKind.local "out_start",
    Flapjack.Exp.var Flapjack.VarKind.local "out_size", Flapjack.Exp.const 0#64]

def globalBody602_14 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 1#64)

def globalBody602_15 : Prog (BitVec 64) :=
.seq globalBody602_13 globalBody602_14

def globalBody602_16 : Prog (BitVec 64) :=
.decCall ("cm") (Flapjack.Shape.one) ("child_message") ([Flapjack.Exp.var Flapjack.VarKind.local "caller", Flapjack.Exp.var Flapjack.VarKind.local "to",
  Flapjack.Exp.var Flapjack.VarKind.local "to", Flapjack.Exp.var Flapjack.VarKind.local "gas",
  Flapjack.Exp.var Flapjack.VarKind.local "reservoir", Flapjack.Exp.var Flapjack.VarKind.local "value",
  Flapjack.Exp.var Flapjack.VarKind.local "call_data", Flapjack.Exp.var Flapjack.VarKind.local "in_size",
  Flapjack.Exp.var Flapjack.VarKind.local "code_address", Flapjack.Exp.var Flapjack.VarKind.local "code",
  Flapjack.Exp.var Flapjack.VarKind.local "code_n", Flapjack.Exp.var Flapjack.VarKind.local "transfer",
  Flapjack.Exp.var Flapjack.VarKind.local "is_static", Flapjack.Exp.var Flapjack.VarKind.local "disable_pre"]) globalBody602_15

def globalBody602_17 : Prog (BitVec 64) :=
.decCall ("child_mem_mark") (Flapjack.Shape.one) ("frame_mem_mark") ([]) globalBody602_16

def globalBody602_18 : Prog (BitVec 64) :=
.decCall ("child_mark") (Flapjack.Shape.one) ("scratch_mark") ([]) globalBody602_17

def globalBody602_19 : Prog (BitVec 64) :=
.dec ("call_data") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.load Flapjack.Shape.one
            (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 256#64]),
          Flapjack.Exp.const 24#64]),
    Flapjack.Exp.var Flapjack.VarKind.local "in_start"]) globalBody602_18

def globalBody602_20 : Prog (BitVec 64) :=
.seq globalBody602_12 globalBody602_19

def globalBody602_21 : Prog (BitVec 64) :=
.dec ("msg") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 256#64]),
      Flapjack.Exp.const 112#64])) globalBody602_20

def globalBody602_22 : Prog (BitVec 64) :=
.seq globalBody602_0 globalBody602_21

def globalBody602_23 : Prog (BitVec 64) :=
.dec ("empty") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 264#64])) globalBody602_22

def globalData602 : Decl (BitVec 64) :=
.function { name := "generic_call", inline := false, exported := false, params := [("gas", Flapjack.Shape.one), ("reservoir", Flapjack.Shape.one),
  ("value", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("caller", Flapjack.Shape.one), ("to", Flapjack.Shape.one), ("code_address", Flapjack.Shape.one),
  ("transfer", Flapjack.Shape.one), ("is_static", Flapjack.Shape.one), ("in_start", Flapjack.Shape.one),
  ("in_size", Flapjack.Shape.one), ("out_start", Flapjack.Shape.one), ("out_size", Flapjack.Shape.one),
  ("code", Flapjack.Shape.one), ("code_n", Flapjack.Shape.one), ("disable_pre", Flapjack.Shape.one),
  ("new_account_charged", Flapjack.Shape.one)], body := globalBody602_23, returnShape := (Flapjack.Shape.one) }
def globalOutput602 := Pancake.PanLang.declToHOL globalData602
end InitECandidate.Proofs.FrontendStages.Declarations
