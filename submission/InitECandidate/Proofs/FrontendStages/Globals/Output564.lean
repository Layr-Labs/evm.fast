import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data564
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate544
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody564_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody564_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody564_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "z") (Flapjack.Exp.const 0#64)) globalBody564_0 globalBody564_1

def globalBody564_3 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "log", Flapjack.Exp.const 0#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 304#64]))

def globalBody564_4 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.var Flapjack.VarKind.local "topics",
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 296#64]),
    Flapjack.Exp.const 32#64]

def globalBody564_5 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memzero"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "topics", Flapjack.Exp.const 32#64],
    Flapjack.Exp.const 12#64]

def globalBody564_6 : Prog (BitVec 64) :=
.seq globalBody564_4 globalBody564_5

def globalBody564_7 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "topics", Flapjack.Exp.const 44#64],
    Flapjack.Exp.var Flapjack.VarKind.local "sender", Flapjack.Exp.const 20#64]

def globalBody564_8 : Prog (BitVec 64) :=
.seq globalBody564_6 globalBody564_7

def globalBody564_9 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memzero"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "topics", Flapjack.Exp.const 64#64],
    Flapjack.Exp.const 12#64]

def globalBody564_10 : Prog (BitVec 64) :=
.seq globalBody564_8 globalBody564_9

def globalBody564_11 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "topics", Flapjack.Exp.const 76#64],
    Flapjack.Exp.var Flapjack.VarKind.local "recipient", Flapjack.Exp.const 20#64]

def globalBody564_12 : Prog (BitVec 64) :=
.seq globalBody564_10 globalBody564_11

def globalBody564_13 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "log", Flapjack.Exp.const 8#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "topics")

def globalBody564_14 : Prog (BitVec 64) :=
.seq globalBody564_12 globalBody564_13

def globalBody564_15 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "log", Flapjack.Exp.const 16#64])
  (Flapjack.Exp.const 3#64)

def globalBody564_16 : Prog (BitVec 64) :=
.seq globalBody564_14 globalBody564_15

def globalBody564_17 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "u256_to_be32"
  [Flapjack.Exp.var Flapjack.VarKind.local "amount", Flapjack.Exp.var Flapjack.VarKind.local "data"]

def globalBody564_18 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "log", Flapjack.Exp.const 24#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "data")

def globalBody564_19 : Prog (BitVec 64) :=
.seq globalBody564_17 globalBody564_18

def globalBody564_20 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "log", Flapjack.Exp.const 32#64])
  (Flapjack.Exp.const 32#64)

def globalBody564_21 : Prog (BitVec 64) :=
.seq globalBody564_19 globalBody564_20

def globalBody564_22 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "log_append"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 256#64]),
    Flapjack.Exp.var Flapjack.VarKind.local "log"]

def globalBody564_23 : Prog (BitVec 64) :=
.seq globalBody564_21 globalBody564_22

def globalBody564_24 : Prog (BitVec 64) :=
.seq globalBody564_23 globalBody564_0

def globalBody564_25 : Prog (BitVec 64) :=
.decCall ("data") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 32#64]) globalBody564_24

def globalBody564_26 : Prog (BitVec 64) :=
.seq globalBody564_16 globalBody564_25

def globalBody564_27 : Prog (BitVec 64) :=
.decCall ("topics") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 96#64]) globalBody564_26

def globalBody564_28 : Prog (BitVec 64) :=
.seq globalBody564_3 globalBody564_27

def globalBody564_29 : Prog (BitVec 64) :=
.decCall ("log") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 40#64]) globalBody564_28

def globalBody564_30 : Prog (BitVec 64) :=
.seq globalBody564_2 globalBody564_29

def globalBody564_31 : Prog (BitVec 64) :=
.decCall ("z") (Flapjack.Shape.one) ("u256_is_zero") ([Flapjack.Exp.var Flapjack.VarKind.local "amount"]) globalBody564_30

def globalData564 : Decl (BitVec 64) :=
.function { name := "emit_transfer_log", inline := false, exported := false, params := [("sender", Flapjack.Shape.one), ("recipient", Flapjack.Shape.one),
  ("amount", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])], body := globalBody564_31, returnShape := (Flapjack.Shape.one) }
def globalOutput564 := Pancake.PanLang.declToHOL globalData564
end InitECandidate.Proofs.FrontendStages.Declarations
