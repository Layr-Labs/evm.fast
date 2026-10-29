import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data244
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate221
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody244_0 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 128#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "")

def globalBody244_1 : Prog (BitVec 64) :=
.decCall ("") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 32#64]) globalBody244_0

def globalBody244_2 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 136#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "")

def globalBody244_3 : Prog (BitVec 64) :=
.decCall ("") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 32#64]) globalBody244_2

def globalBody244_4 : Prog (BitVec 64) :=
.seq globalBody244_1 globalBody244_3

def globalBody244_5 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 144#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "")

def globalBody244_6 : Prog (BitVec 64) :=
.decCall ("") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 64#64]) globalBody244_5

def globalBody244_7 : Prog (BitVec 64) :=
.seq globalBody244_4 globalBody244_6

def globalBody244_8 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 152#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "")

def globalBody244_9 : Prog (BitVec 64) :=
.decCall ("") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 40#64]) globalBody244_8

def globalBody244_10 : Prog (BitVec 64) :=
.seq globalBody244_7 globalBody244_9

def globalBody244_11 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 160#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "")

def globalBody244_12 : Prog (BitVec 64) :=
.decCall ("") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 16#64]) globalBody244_11

def globalBody244_13 : Prog (BitVec 64) :=
.seq globalBody244_10 globalBody244_12

def globalBody244_14 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 152#64]))
  (Flapjack.Exp.const 128#64)

def globalBody244_15 : Prog (BitVec 64) :=
.seq globalBody244_13 globalBody244_14

def globalBody244_16 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "keccak256"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 152#64]),
    Flapjack.Exp.const 1#64,
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 128#64])]

def globalBody244_17 : Prog (BitVec 64) :=
.seq globalBody244_15 globalBody244_16

def globalBody244_18 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "keccak256"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 152#64]),
    Flapjack.Exp.const 0#64,
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 136#64])]

def globalBody244_19 : Prog (BitVec 64) :=
.seq globalBody244_17 globalBody244_18

def globalBody244_20 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody244_21 : Prog (BitVec 64) :=
.seq globalBody244_19 globalBody244_20

def globalData244 : Decl (BitVec 64) :=
.function { name := "mpt_init", inline := false, exported := false, params := [], body := globalBody244_21, returnShape := (Flapjack.Shape.one) }
def globalOutput244 := Pancake.PanLang.declToHOL globalData244
end InitECandidate.Proofs.FrontendStages.Declarations
