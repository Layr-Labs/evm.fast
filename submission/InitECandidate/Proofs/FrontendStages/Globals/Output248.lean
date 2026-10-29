import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data248
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate225
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody248_0 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 128#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "")

def globalBody248_1 : Prog (BitVec 64) :=
.decCall ("") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 32#64]) globalBody248_0

def globalBody248_2 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 136#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "")

def globalBody248_3 : Prog (BitVec 64) :=
.decCall ("") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 32#64]) globalBody248_2

def globalBody248_4 : Prog (BitVec 64) :=
.seq globalBody248_1 globalBody248_3

def globalBody248_5 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 144#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "")

def globalBody248_6 : Prog (BitVec 64) :=
.decCall ("") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 64#64]) globalBody248_5

def globalBody248_7 : Prog (BitVec 64) :=
.seq globalBody248_4 globalBody248_6

def globalBody248_8 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 152#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "")

def globalBody248_9 : Prog (BitVec 64) :=
.decCall ("") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 40#64]) globalBody248_8

def globalBody248_10 : Prog (BitVec 64) :=
.seq globalBody248_7 globalBody248_9

def globalBody248_11 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 160#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "")

def globalBody248_12 : Prog (BitVec 64) :=
.decCall ("") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 16#64]) globalBody248_11

def globalBody248_13 : Prog (BitVec 64) :=
.seq globalBody248_10 globalBody248_12

def globalBody248_14 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 152#64]))
  (Flapjack.Exp.const 128#64)

def globalBody248_15 : Prog (BitVec 64) :=
.seq globalBody248_13 globalBody248_14

def globalBody248_16 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "keccak256"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 152#64]),
    Flapjack.Exp.const 1#64,
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 128#64])]

def globalBody248_17 : Prog (BitVec 64) :=
.seq globalBody248_15 globalBody248_16

def globalBody248_18 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "keccak256"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 152#64]),
    Flapjack.Exp.const 0#64,
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 136#64])]

def globalBody248_19 : Prog (BitVec 64) :=
.seq globalBody248_17 globalBody248_18

def globalBody248_20 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody248_21 : Prog (BitVec 64) :=
.seq globalBody248_19 globalBody248_20

def globalData248 : Decl (BitVec 64) :=
.function { name := "mpt_init", inline := false, exported := false, params := [], body := globalBody248_21, returnShape := (Flapjack.Shape.one) }
def globalOutput248 := Pancake.PanLang.declToHOL globalData248
end InitECandidate.Proofs.FrontendStages.Declarations
