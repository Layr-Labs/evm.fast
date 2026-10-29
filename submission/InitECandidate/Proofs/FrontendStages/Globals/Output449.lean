import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data449
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate428
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody449_0 : Prog (BitVec 64) :=
Flapjack.Prog.raise "EvmErr" (Flapjack.Exp.const 4#64)

def globalBody449_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody449_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "gl")
  (Flapjack.Exp.var Flapjack.VarKind.local "amount")) globalBody449_0 globalBody449_1

def globalBody449_3 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 256#64]),
      Flapjack.Exp.const 64#64])
  (Flapjack.Exp.op Flapjack.BinOp.sub
    [Flapjack.Exp.var Flapjack.VarKind.local "gl", Flapjack.Exp.var Flapjack.VarKind.local "amount"])

def globalBody449_4 : Prog (BitVec 64) :=
.seq globalBody449_2 globalBody449_3

def globalBody449_5 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 256#64]),
      Flapjack.Exp.const 184#64])
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add
          [Flapjack.Exp.load Flapjack.Shape.one
              (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 256#64]),
            Flapjack.Exp.const 184#64]),
      Flapjack.Exp.var Flapjack.VarKind.local "amount"])

def globalBody449_6 : Prog (BitVec 64) :=
.seq globalBody449_4 globalBody449_5

def globalBody449_7 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody449_8 : Prog (BitVec 64) :=
.seq globalBody449_6 globalBody449_7

def globalBody449_9 : Prog (BitVec 64) :=
.dec ("gl") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 256#64]),
      Flapjack.Exp.const 64#64])) globalBody449_8

def globalData449 : Decl (BitVec 64) :=
.function { name := "charge_gas", inline := false, exported := false, params := [("amount", Flapjack.Shape.one)], body := globalBody449_9, returnShape := (Flapjack.Shape.one) }
def globalOutput449 := Pancake.PanLang.declToHOL globalData449
end InitECandidate.Proofs.FrontendStages.Declarations
