import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data568
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate548
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody568_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody568_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody568_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "z") (Flapjack.Exp.const 0#64)) globalBody568_0 globalBody568_1

def globalBody568_3 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "log", Flapjack.Exp.const 0#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 304#64]))

def globalBody568_4 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.var Flapjack.VarKind.local "topics",
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 296#64]),
    Flapjack.Exp.const 32#64]

def globalBody568_5 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memzero"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "topics", Flapjack.Exp.const 32#64],
    Flapjack.Exp.const 12#64]

def globalBody568_6 : Prog (BitVec 64) :=
.seq globalBody568_4 globalBody568_5

def globalBody568_7 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "topics", Flapjack.Exp.const 44#64],
    Flapjack.Exp.var Flapjack.VarKind.local "sender", Flapjack.Exp.const 20#64]

def globalBody568_8 : Prog (BitVec 64) :=
.seq globalBody568_6 globalBody568_7

def globalBody568_9 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memzero"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "topics", Flapjack.Exp.const 64#64],
    Flapjack.Exp.const 12#64]

def globalBody568_10 : Prog (BitVec 64) :=
.seq globalBody568_8 globalBody568_9

def globalBody568_11 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "topics", Flapjack.Exp.const 76#64],
    Flapjack.Exp.var Flapjack.VarKind.local "recipient", Flapjack.Exp.const 20#64]

def globalBody568_12 : Prog (BitVec 64) :=
.seq globalBody568_10 globalBody568_11

def globalBody568_13 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "log", Flapjack.Exp.const 8#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "topics")

def globalBody568_14 : Prog (BitVec 64) :=
.seq globalBody568_12 globalBody568_13

def globalBody568_15 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "log", Flapjack.Exp.const 16#64])
  (Flapjack.Exp.const 3#64)

def globalBody568_16 : Prog (BitVec 64) :=
.seq globalBody568_14 globalBody568_15

def globalBody568_17 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "u256_to_be32"
  [Flapjack.Exp.var Flapjack.VarKind.local "amount", Flapjack.Exp.var Flapjack.VarKind.local "data"]

def globalBody568_18 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "log", Flapjack.Exp.const 24#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "data")

def globalBody568_19 : Prog (BitVec 64) :=
.seq globalBody568_17 globalBody568_18

def globalBody568_20 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "log", Flapjack.Exp.const 32#64])
  (Flapjack.Exp.const 32#64)

def globalBody568_21 : Prog (BitVec 64) :=
.seq globalBody568_19 globalBody568_20

def globalBody568_22 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "log_append"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 256#64]),
    Flapjack.Exp.var Flapjack.VarKind.local "log"]

def globalBody568_23 : Prog (BitVec 64) :=
.seq globalBody568_21 globalBody568_22

def globalBody568_24 : Prog (BitVec 64) :=
.seq globalBody568_23 globalBody568_0

def globalBody568_25 : Prog (BitVec 64) :=
.decCall ("data") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 32#64]) globalBody568_24

def globalBody568_26 : Prog (BitVec 64) :=
.seq globalBody568_16 globalBody568_25

def globalBody568_27 : Prog (BitVec 64) :=
.decCall ("topics") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 96#64]) globalBody568_26

def globalBody568_28 : Prog (BitVec 64) :=
.seq globalBody568_3 globalBody568_27

def globalBody568_29 : Prog (BitVec 64) :=
.decCall ("log") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 40#64]) globalBody568_28

def globalBody568_30 : Prog (BitVec 64) :=
.seq globalBody568_2 globalBody568_29

def globalBody568_31 : Prog (BitVec 64) :=
.decCall ("z") (Flapjack.Shape.one) ("u256_is_zero") ([Flapjack.Exp.var Flapjack.VarKind.local "amount"]) globalBody568_30

def globalData568 : Decl (BitVec 64) :=
.function { name := "emit_transfer_log", inline := false, exported := false, params := [("sender", Flapjack.Shape.one), ("recipient", Flapjack.Shape.one),
  ("amount", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])], body := globalBody568_31, returnShape := (Flapjack.Shape.one) }
def globalOutput568 := Pancake.PanLang.declToHOL globalData568
end InitECandidate.Proofs.FrontendStages.Declarations
