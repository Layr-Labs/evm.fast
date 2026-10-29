import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data325
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate309
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody325_0 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "lc", Flapjack.Exp.const 21#64,
      Flapjack.Exp.var Flapjack.VarKind.local "ln", Flapjack.Exp.var Flapjack.VarKind.local "ly",
      Flapjack.Exp.var Flapjack.VarKind.local "lr", Flapjack.Exp.var Flapjack.VarKind.local "ls"])

def globalBody325_1 : Prog (BitVec 64) :=
.decCall ("ls") (Flapjack.Shape.one) ("tx_u256_encoded_len") ([Flapjack.Exp.load
    (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.const 88#64])]) globalBody325_0

def globalBody325_2 : Prog (BitVec 64) :=
.decCall ("lr") (Flapjack.Shape.one) ("tx_u256_encoded_len") ([Flapjack.Exp.load
    (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.const 56#64])]) globalBody325_1

def globalBody325_3 : Prog (BitVec 64) :=
.decCall ("ly") (Flapjack.Shape.one) ("rlp_word_encoded_len") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.const 48#64])]) globalBody325_2

def globalBody325_4 : Prog (BitVec 64) :=
.decCall ("ln") (Flapjack.Shape.one) ("rlp_word_encoded_len") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.const 40#64])]) globalBody325_3

def globalBody325_5 : Prog (BitVec 64) :=
.decCall ("lc") (Flapjack.Shape.one) ("tx_u256_encoded_len") ([Flapjack.Exp.load
    (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.const 0#64])]) globalBody325_4

def globalData325 : Decl (BitVec 64) :=
.function { name := "auth_payload_len", inline := false, exported := false, params := [("a", Flapjack.Shape.one)], body := globalBody325_5, returnShape := (Flapjack.Shape.one) }
def globalOutput325 := Pancake.PanLang.declToHOL globalData325
end InitECandidate.Proofs.FrontendStages.Declarations
