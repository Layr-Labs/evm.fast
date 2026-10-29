import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data129
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate113
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody129_0 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "ncap" (Flapjack.Exp.const 2#64)

def globalBody129_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody129_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "ncap") (Flapjack.Exp.const 2#64)) globalBody129_0 globalBody129_1

def globalBody129_3 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 0#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "key_len")

def globalBody129_4 : Prog (BitVec 64) :=
.seq globalBody129_2 globalBody129_3

def globalBody129_5 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 8#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "stride")

def globalBody129_6 : Prog (BitVec 64) :=
.seq globalBody129_4 globalBody129_5

def globalBody129_7 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 16#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "cap")

def globalBody129_8 : Prog (BitVec 64) :=
.seq globalBody129_6 globalBody129_7

def globalBody129_9 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 24#64])
  (Flapjack.Exp.const 0#64)

def globalBody129_10 : Prog (BitVec 64) :=
.seq globalBody129_8 globalBody129_9

def globalBody129_11 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 32#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "keys")

def globalBody129_12 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 40#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "nodes")

def globalBody129_13 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 48#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "order")

def globalBody129_14 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 56#64])
  (Flapjack.Exp.const 0#64)

def globalBody129_15 : Prog (BitVec 64) :=
.seq globalBody129_13 globalBody129_14

def globalBody129_16 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 64#64])
  (Flapjack.Exp.const 1#64)

def globalBody129_17 : Prog (BitVec 64) :=
.seq globalBody129_15 globalBody129_16

def globalBody129_18 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 72#64])
  (Flapjack.Exp.const 0#64)

def globalBody129_19 : Prog (BitVec 64) :=
.seq globalBody129_17 globalBody129_18

def globalBody129_20 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 80#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "ncap")

def globalBody129_21 : Prog (BitVec 64) :=
.seq globalBody129_19 globalBody129_20

def globalBody129_22 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "t")

def globalBody129_23 : Prog (BitVec 64) :=
.seq globalBody129_21 globalBody129_22

def globalBody129_24 : Prog (BitVec 64) :=
.decCall ("order") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "ncap", Flapjack.Exp.const 1#64],
      Flapjack.Exp.const 8#64]]) globalBody129_23

def globalBody129_25 : Prog (BitVec 64) :=
.seq globalBody129_12 globalBody129_24

def globalBody129_26 : Prog (BitVec 64) :=
.decCall ("nodes") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "ncap", Flapjack.Exp.const 1#64],
      Flapjack.Exp.const 32#64]]) globalBody129_25

def globalBody129_27 : Prog (BitVec 64) :=
.seq globalBody129_11 globalBody129_26

def globalBody129_28 : Prog (BitVec 64) :=
.decCall ("keys") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "ncap", Flapjack.Exp.const 1#64],
      Flapjack.Exp.var Flapjack.VarKind.local "stride"]]) globalBody129_27

def globalBody129_29 : Prog (BitVec 64) :=
.seq globalBody129_10 globalBody129_28

def globalBody129_30 : Prog (BitVec 64) :=
.dec ("ncap") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.local "cap") globalBody129_29

def globalBody129_31 : Prog (BitVec 64) :=
.dec ("stride") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "key_len", Flapjack.Exp.const 7#64],
    Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.const 0#64, Flapjack.Exp.const 8#64]]) globalBody129_30

def globalBody129_32 : Prog (BitVec 64) :=
.decCall ("t") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 88#64]) globalBody129_31

def globalData129 : Decl (BitVec 64) :=
.function { name := "htab_new", inline := false, exported := false, params := [("key_len", Flapjack.Shape.one), ("cap", Flapjack.Shape.one)], body := globalBody129_32, returnShape := (Flapjack.Shape.one) }
def globalOutput129 := Pancake.PanLang.declToHOL globalData129
end InitECandidate.Proofs.FrontendStages.Declarations
