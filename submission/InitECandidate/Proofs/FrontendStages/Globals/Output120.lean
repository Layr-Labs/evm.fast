import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data120
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate103
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody120_0 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64])

def globalBody120_1 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "dst", Flapjack.Exp.var Flapjack.VarKind.local "i"])
  (Flapjack.Exp.var Flapjack.VarKind.local "v")

def globalBody120_2 : Prog (BitVec 64) :=
.seq globalBody120_0 globalBody120_1

def globalBody120_3 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "v"
  (Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "v") (Flapjack.Exp.const 8#64))

def globalBody120_4 : Prog (BitVec 64) :=
.seq globalBody120_2 globalBody120_3

def globalBody120_5 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.const 0#64) (Flapjack.Exp.var Flapjack.VarKind.local "i")) globalBody120_4

def globalBody120_6 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody120_7 : Prog (BitVec 64) :=
.seq globalBody120_5 globalBody120_6

def globalBody120_8 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.local "n") globalBody120_7

def globalData120 : Decl (BitVec 64) :=
.function { name := "rlp_put_be", inline := false, exported := false, params := [("dst", Flapjack.Shape.one), ("v", Flapjack.Shape.one), ("n", Flapjack.Shape.one)], body := globalBody120_8, returnShape := (Flapjack.Shape.one) }
def globalOutput120 := Pancake.PanLang.declToHOL globalData120
end InitECandidate.Proofs.FrontendStages.Declarations
