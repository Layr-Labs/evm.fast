import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data130
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate114
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody130_0 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "ncap" (Flapjack.Exp.const 2#64)

def globalBody130_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody130_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "ncap") (Flapjack.Exp.const 2#64)) globalBody130_0 globalBody130_1

def globalBody130_3 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 0#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "key_len")

def globalBody130_4 : Prog (BitVec 64) :=
.seq globalBody130_2 globalBody130_3

def globalBody130_5 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 8#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "stride")

def globalBody130_6 : Prog (BitVec 64) :=
.seq globalBody130_4 globalBody130_5

def globalBody130_7 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 16#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "cap")

def globalBody130_8 : Prog (BitVec 64) :=
.seq globalBody130_6 globalBody130_7

def globalBody130_9 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 24#64])
  (Flapjack.Exp.const 0#64)

def globalBody130_10 : Prog (BitVec 64) :=
.seq globalBody130_8 globalBody130_9

def globalBody130_11 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 32#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "keys")

def globalBody130_12 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 40#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "nodes")

def globalBody130_13 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 48#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "order")

def globalBody130_14 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 56#64])
  (Flapjack.Exp.const 0#64)

def globalBody130_15 : Prog (BitVec 64) :=
.seq globalBody130_13 globalBody130_14

def globalBody130_16 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 64#64])
  (Flapjack.Exp.const 1#64)

def globalBody130_17 : Prog (BitVec 64) :=
.seq globalBody130_15 globalBody130_16

def globalBody130_18 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 72#64])
  (Flapjack.Exp.const 0#64)

def globalBody130_19 : Prog (BitVec 64) :=
.seq globalBody130_17 globalBody130_18

def globalBody130_20 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 80#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "ncap")

def globalBody130_21 : Prog (BitVec 64) :=
.seq globalBody130_19 globalBody130_20

def globalBody130_22 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "t")

def globalBody130_23 : Prog (BitVec 64) :=
.seq globalBody130_21 globalBody130_22

def globalBody130_24 : Prog (BitVec 64) :=
.decCall ("order") (Flapjack.Shape.one) ("scratch_alloc") ([Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "ncap", Flapjack.Exp.const 1#64],
      Flapjack.Exp.const 8#64]]) globalBody130_23

def globalBody130_25 : Prog (BitVec 64) :=
.seq globalBody130_12 globalBody130_24

def globalBody130_26 : Prog (BitVec 64) :=
.decCall ("nodes") (Flapjack.Shape.one) ("scratch_alloc") ([Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "ncap", Flapjack.Exp.const 1#64],
      Flapjack.Exp.const 32#64]]) globalBody130_25

def globalBody130_27 : Prog (BitVec 64) :=
.seq globalBody130_11 globalBody130_26

def globalBody130_28 : Prog (BitVec 64) :=
.decCall ("keys") (Flapjack.Shape.one) ("scratch_alloc") ([Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "ncap", Flapjack.Exp.const 1#64],
      Flapjack.Exp.var Flapjack.VarKind.local "stride"]]) globalBody130_27

def globalBody130_29 : Prog (BitVec 64) :=
.seq globalBody130_10 globalBody130_28

def globalBody130_30 : Prog (BitVec 64) :=
.dec ("ncap") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.local "cap") globalBody130_29

def globalBody130_31 : Prog (BitVec 64) :=
.dec ("stride") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "key_len", Flapjack.Exp.const 7#64],
    Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.const 0#64, Flapjack.Exp.const 8#64]]) globalBody130_30

def globalBody130_32 : Prog (BitVec 64) :=
.decCall ("t") (Flapjack.Shape.one) ("scratch_alloc") ([Flapjack.Exp.const 88#64]) globalBody130_31

def globalData130 : Decl (BitVec 64) :=
.function { name := "htab_new_scratch", inline := false, exported := false, params := [("key_len", Flapjack.Shape.one), ("cap", Flapjack.Shape.one)], body := globalBody130_32, returnShape := (Flapjack.Shape.one) }
def globalOutput130 := Pancake.PanLang.declToHOL globalData130
end InitECandidate.Proofs.FrontendStages.Declarations
