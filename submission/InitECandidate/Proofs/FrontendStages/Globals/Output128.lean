import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data128
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate112
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody128_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 1#64)

def globalBody128_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody128_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "w") (Flapjack.Exp.const 128#64)) globalBody128_0 globalBody128_1

def globalBody128_3 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.const 1#64, Flapjack.Exp.var Flapjack.VarKind.local "ll"])

def globalBody128_4 : Prog (BitVec 64) :=
.decCall ("ll") (Flapjack.Shape.one) ("rlp_be_len") ([Flapjack.Exp.var Flapjack.VarKind.local "w"]) globalBody128_3

def globalBody128_5 : Prog (BitVec 64) :=
.seq globalBody128_2 globalBody128_4

def globalData128 : Decl (BitVec 64) :=
.function { name := "rlp_word_encoded_len", inline := false, exported := false, params := [("w", Flapjack.Shape.one)], body := globalBody128_5, returnShape := (Flapjack.Shape.one) }
def globalOutput128 := Pancake.PanLang.declToHOL globalData128
end InitECandidate.Proofs.FrontendStages.Declarations
