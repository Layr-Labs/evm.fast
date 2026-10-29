import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data320
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate304
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody320_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 1#64)

def globalBody320_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody320_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "n") (Flapjack.Exp.const 0#64)) globalBody320_0 globalBody320_1

def globalBody320_3 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "v"))
  (Flapjack.Exp.const 128#64)) globalBody320_0 globalBody320_1

def globalBody320_4 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "n") (Flapjack.Exp.const 1#64)) globalBody320_3 globalBody320_1

def globalBody320_5 : Prog (BitVec 64) :=
.seq globalBody320_2 globalBody320_4

def globalBody320_6 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.const 1#64, Flapjack.Exp.var Flapjack.VarKind.local "n"])

def globalBody320_7 : Prog (BitVec 64) :=
.seq globalBody320_5 globalBody320_6

def globalBody320_8 : Prog (BitVec 64) :=
.decCall ("n") (Flapjack.Shape.one) ("u256_byte_length") ([Flapjack.Exp.var Flapjack.VarKind.local "v"]) globalBody320_7

def globalData320 : Decl (BitVec 64) :=
.function { name := "tx_u256_encoded_len", inline := false, exported := false, params := [("v", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])], body := globalBody320_8, returnShape := (Flapjack.Shape.one) }
def globalOutput320 := Pancake.PanLang.declToHOL globalData320
end InitECandidate.Proofs.FrontendStages.Declarations
