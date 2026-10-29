import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data694
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate678
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody694_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "charge_gas" [Flapjack.Exp.const 6000#64]

def globalBody694_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "buffer_read"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "msg", Flapjack.Exp.const 88#64]),
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "msg", Flapjack.Exp.const 96#64]),
    Flapjack.Exp.const 0#64, Flapjack.Exp.const 96#64, Flapjack.Exp.var Flapjack.VarKind.local "buf"]

def globalBody694_2 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "heap_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"]

def globalBody694_3 : Prog (BitVec 64) :=
Flapjack.Prog.raise "EvmErr" (Flapjack.Exp.const 4#64)

def globalBody694_4 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody694_5 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "err") (Flapjack.Exp.const 0#64)) globalBody694_3 globalBody694_4

def globalBody694_6 : Prog (BitVec 64) :=
.seq globalBody694_2 globalBody694_5

def globalBody694_7 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 256#64]),
      Flapjack.Exp.const 120#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "out")

def globalBody694_8 : Prog (BitVec 64) :=
.seq globalBody694_6 globalBody694_7

def globalBody694_9 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 256#64]),
      Flapjack.Exp.const 128#64])
  (Flapjack.Exp.const 64#64)

def globalBody694_10 : Prog (BitVec 64) :=
.seq globalBody694_8 globalBody694_9

def globalBody694_11 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody694_12 : Prog (BitVec 64) :=
.seq globalBody694_10 globalBody694_11

def globalBody694_13 : Prog (BitVec 64) :=
.decCall ("err") (Flapjack.Shape.one) ("bn254_g1_mul") ([Flapjack.Exp.var Flapjack.VarKind.local "buf", Flapjack.Exp.var Flapjack.VarKind.local "out"]) globalBody694_12

def globalBody694_14 : Prog (BitVec 64) :=
.seq globalBody694_1 globalBody694_13

def globalBody694_15 : Prog (BitVec 64) :=
.decCall ("buf") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 96#64]) globalBody694_14

def globalBody694_16 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) globalBody694_15

def globalBody694_17 : Prog (BitVec 64) :=
.decCall ("out") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 64#64]) globalBody694_16

def globalBody694_18 : Prog (BitVec 64) :=
.seq globalBody694_0 globalBody694_17

def globalBody694_19 : Prog (BitVec 64) :=
.dec ("msg") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 256#64]),
      Flapjack.Exp.const 112#64])) globalBody694_18

def globalData694 : Decl (BitVec 64) :=
.function { name := "pre_alt_bn128_mul", inline := false, exported := false, params := [], body := globalBody694_19, returnShape := (Flapjack.Shape.one) }
def globalOutput694 := Pancake.PanLang.declToHOL globalData694
end InitECandidate.Proofs.FrontendStages.Declarations
