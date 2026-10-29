import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data547
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate531
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody547_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "charge_gas" [Flapjack.Exp.const 2#64]

def globalBody547_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "stack_push_word"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.load Flapjack.Shape.one
            (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 256#64]),
          Flapjack.Exp.const 152#64])]

def globalBody547_2 : Prog (BitVec 64) :=
.seq globalBody547_0 globalBody547_1

def globalBody547_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "pc_add" [Flapjack.Exp.const 1#64]

def globalBody547_4 : Prog (BitVec 64) :=
.seq globalBody547_2 globalBody547_3

def globalBody547_5 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody547_6 : Prog (BitVec 64) :=
.seq globalBody547_4 globalBody547_5

def globalData547 : Decl (BitVec 64) :=
.function { name := "op_returndatasize", inline := false, exported := false, params := [], body := globalBody547_6, returnShape := (Flapjack.Shape.one) }
def globalOutput547 := Pancake.PanLang.declToHOL globalData547
end InitECandidate.Proofs.FrontendStages.Declarations
