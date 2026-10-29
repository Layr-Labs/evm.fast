import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data455
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate434
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody455_0 : Prog (BitVec 64) :=
Flapjack.Prog.raise "EvmErr" (Flapjack.Exp.const 3#64)

def globalBody455_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody455_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notLower (Flapjack.Exp.var Flapjack.VarKind.local "cap") (Flapjack.Exp.const 1024#64)) globalBody455_0 globalBody455_1

def globalBody455_3 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "ncap" (Flapjack.Exp.const 1024#64)

def globalBody455_4 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.const 1024#64) (Flapjack.Exp.var Flapjack.VarKind.local "ncap")) globalBody455_3 globalBody455_1

def globalBody455_5 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.var Flapjack.VarKind.local "ns",
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.load Flapjack.Shape.one
            (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 256#64]),
          Flapjack.Exp.const 8#64]),
    Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "sp", Flapjack.Exp.const 32#64]]

def globalBody455_6 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 256#64]),
      Flapjack.Exp.const 8#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "ns")

def globalBody455_7 : Prog (BitVec 64) :=
.seq globalBody455_5 globalBody455_6

def globalBody455_8 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 256#64]),
      Flapjack.Exp.const 232#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "ncap")

def globalBody455_9 : Prog (BitVec 64) :=
.seq globalBody455_7 globalBody455_8

def globalBody455_10 : Prog (BitVec 64) :=
.decCall ("ns") (Flapjack.Shape.one) ("scratch_alloc") ([Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "ncap", Flapjack.Exp.const 32#64]]) globalBody455_9

def globalBody455_11 : Prog (BitVec 64) :=
.seq globalBody455_4 globalBody455_10

def globalBody455_12 : Prog (BitVec 64) :=
.dec ("ncap") (Flapjack.Shape.one) (Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "cap", Flapjack.Exp.const 2#64]) globalBody455_11

def globalBody455_13 : Prog (BitVec 64) :=
.seq globalBody455_2 globalBody455_12

def globalBody455_14 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notLower (Flapjack.Exp.var Flapjack.VarKind.local "sp")
  (Flapjack.Exp.var Flapjack.VarKind.local "cap")) globalBody455_13 globalBody455_1

def globalBody455_15 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "sp") (Flapjack.Exp.const 1024#64)) globalBody455_0 globalBody455_1

def globalBody455_16 : Prog (BitVec 64) :=
.seq globalBody455_14 globalBody455_15

def globalBody455_17 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add
          [Flapjack.Exp.load Flapjack.Shape.one
              (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 256#64]),
            Flapjack.Exp.const 8#64]),
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "sp", Flapjack.Exp.const 32#64]])
  (Flapjack.Exp.var Flapjack.VarKind.local "v")

def globalBody455_18 : Prog (BitVec 64) :=
.seq globalBody455_16 globalBody455_17

def globalBody455_19 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 256#64]),
      Flapjack.Exp.const 16#64])
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "sp", Flapjack.Exp.const 1#64])

def globalBody455_20 : Prog (BitVec 64) :=
.seq globalBody455_18 globalBody455_19

def globalBody455_21 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody455_22 : Prog (BitVec 64) :=
.seq globalBody455_20 globalBody455_21

def globalBody455_23 : Prog (BitVec 64) :=
.dec ("cap") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 256#64]),
      Flapjack.Exp.const 232#64])) globalBody455_22

def globalBody455_24 : Prog (BitVec 64) :=
.dec ("sp") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 256#64]),
      Flapjack.Exp.const 16#64])) globalBody455_23

def globalData455 : Decl (BitVec 64) :=
.function { name := "stack_push", inline := false, exported := false, params := [("v", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])], body := globalBody455_24, returnShape := (Flapjack.Shape.one) }
def globalOutput455 := Pancake.PanLang.declToHOL globalData455
end InitECandidate.Proofs.FrontendStages.Declarations
