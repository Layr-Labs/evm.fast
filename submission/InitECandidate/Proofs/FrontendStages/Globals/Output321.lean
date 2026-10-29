import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data321
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate305
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody321_0 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte (Flapjack.Exp.var Flapjack.VarKind.local "dst") (Flapjack.Exp.const 128#64)

def globalBody321_1 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 1#64)

def globalBody321_2 : Prog (BitVec 64) :=
.seq globalBody321_0 globalBody321_1

def globalBody321_3 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody321_4 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "to") (Flapjack.Exp.const 0#64)) globalBody321_2 globalBody321_3

def globalBody321_5 : Prog (BitVec 64) :=
Flapjack.Prog.call none "rlp_encode_bytes"
  [Flapjack.Exp.var Flapjack.VarKind.local "dst", Flapjack.Exp.var Flapjack.VarKind.local "to",
    Flapjack.Exp.const 20#64]

def globalBody321_6 : Prog (BitVec 64) :=
.seq globalBody321_4 globalBody321_5

def globalData321 : Decl (BitVec 64) :=
.function { name := "tx_put_to", inline := false, exported := false, params := [("dst", Flapjack.Shape.one), ("to", Flapjack.Shape.one)], body := globalBody321_6, returnShape := (Flapjack.Shape.one) }
def globalOutput321 := Pancake.PanLang.declToHOL globalData321
end InitECandidate.Proofs.FrontendStages.Declarations
