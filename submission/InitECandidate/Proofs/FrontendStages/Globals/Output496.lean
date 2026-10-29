import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data496
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate480
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody496_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "charge_gas" [Flapjack.Exp.const 3#64]

def globalBody496_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "stack_push"
  [Flapjack.Exp.rStruct
      [Flapjack.Exp.op Flapjack.BinOp.xor
          [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "x"),
            Flapjack.Exp.const 18446744073709551615#64],
        Flapjack.Exp.op Flapjack.BinOp.xor
          [Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "x"),
            Flapjack.Exp.const 18446744073709551615#64],
        Flapjack.Exp.op Flapjack.BinOp.xor
          [Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "x"),
            Flapjack.Exp.const 18446744073709551615#64],
        Flapjack.Exp.op Flapjack.BinOp.xor
          [Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "x"),
            Flapjack.Exp.const 18446744073709551615#64]]]

def globalBody496_2 : Prog (BitVec 64) :=
.seq globalBody496_0 globalBody496_1

def globalBody496_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "pc_add" [Flapjack.Exp.const 1#64]

def globalBody496_4 : Prog (BitVec 64) :=
.seq globalBody496_2 globalBody496_3

def globalBody496_5 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody496_6 : Prog (BitVec 64) :=
.seq globalBody496_4 globalBody496_5

def globalBody496_7 : Prog (BitVec 64) :=
.decCall ("x") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("stack_pop") ([]) globalBody496_6

def globalData496 : Decl (BitVec 64) :=
.function { name := "op_not", inline := false, exported := false, params := [], body := globalBody496_7, returnShape := (Flapjack.Shape.one) }
def globalOutput496 := Pancake.PanLang.declToHOL globalData496
end InitECandidate.Proofs.FrontendStages.Declarations
