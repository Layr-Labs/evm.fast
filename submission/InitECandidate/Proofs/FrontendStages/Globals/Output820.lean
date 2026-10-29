import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data820
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate803
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody820_0 : Prog (BitVec 64) :=
Flapjack.Prog.raise "EvmErr" (Flapjack.Exp.const 10#64)

def globalBody820_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody820_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "n") (Flapjack.Exp.const 64#64)) globalBody820_0 globalBody820_1

def globalBody820_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "charge_gas" [Flapjack.Exp.const 5500#64]

def globalBody820_4 : Prog (BitVec 64) :=
.seq globalBody820_2 globalBody820_3

def globalBody820_5 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "err") (Flapjack.Exp.const 0#64)) globalBody820_0 globalBody820_1

def globalBody820_6 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 256#64]),
      Flapjack.Exp.const 120#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "out")

def globalBody820_7 : Prog (BitVec 64) :=
.seq globalBody820_5 globalBody820_6

def globalBody820_8 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 256#64]),
      Flapjack.Exp.const 128#64])
  (Flapjack.Exp.const 128#64)

def globalBody820_9 : Prog (BitVec 64) :=
.seq globalBody820_7 globalBody820_8

def globalBody820_10 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody820_11 : Prog (BitVec 64) :=
.seq globalBody820_9 globalBody820_10

def globalBody820_12 : Prog (BitVec 64) :=
.decCall ("err") (Flapjack.Shape.one) ("bls_map_fp_to_g1_exec") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "msg", Flapjack.Exp.const 88#64]),
  Flapjack.Exp.var Flapjack.VarKind.local "out"]) globalBody820_11

def globalBody820_13 : Prog (BitVec 64) :=
.decCall ("out") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 128#64]) globalBody820_12

def globalBody820_14 : Prog (BitVec 64) :=
.seq globalBody820_4 globalBody820_13

def globalBody820_15 : Prog (BitVec 64) :=
.dec ("n") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "msg", Flapjack.Exp.const 96#64])) globalBody820_14

def globalBody820_16 : Prog (BitVec 64) :=
.dec ("msg") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 256#64]),
      Flapjack.Exp.const 112#64])) globalBody820_15

def globalData820 : Decl (BitVec 64) :=
.function { name := "pre_bls_map_fp_to_g1", inline := false, exported := false, params := [], body := globalBody820_16, returnShape := (Flapjack.Shape.one) }
def globalOutput820 := Pancake.PanLang.declToHOL globalData820
end InitECandidate.Proofs.FrontendStages.Declarations
