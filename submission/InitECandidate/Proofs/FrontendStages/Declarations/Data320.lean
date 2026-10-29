import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify304
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body320_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 1#64)

def body320_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body320_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "n") (Flapjack.Exp.const 0#64)) body320_0 body320_1

def body320_3 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "v"))
  (Flapjack.Exp.const 128#64)) body320_0 body320_1

def body320_4 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "n") (Flapjack.Exp.const 1#64)) body320_3 body320_1

def body320_5 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.const 1#64, Flapjack.Exp.var Flapjack.VarKind.local "n"])

def body320_6 : Prog (BitVec 64) :=
.seq body320_4 body320_5

def body320_7 : Prog (BitVec 64) :=
.seq body320_2 body320_6

def body320_8 : Prog (BitVec 64) :=
.decCall ("n") (Flapjack.Shape.one) ("u256_byte_length") ([Flapjack.Exp.var Flapjack.VarKind.local "v"]) body320_7

def body320_9 : Prog (BitVec 64) :=
.seq body320_2 body320_4

def body320_10 : Prog (BitVec 64) :=
.seq body320_9 body320_5

def body320_11 : Prog (BitVec 64) :=
.decCall ("n") (Flapjack.Shape.one) ("u256_byte_length") ([Flapjack.Exp.var Flapjack.VarKind.local "v"]) body320_10

def originalData320 : Decl (BitVec 64) :=
.function { name := "tx_u256_encoded_len", inline := false, exported := false, params := [("v", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])], body := body320_8, returnShape := (Flapjack.Shape.one) }
def simplifiedData320 : Decl (BitVec 64) :=
.function { name := "tx_u256_encoded_len", inline := false, exported := false, params := [("v", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])], body := body320_11, returnShape := (Flapjack.Shape.one) }
def original320 := Pancake.PanLang.declToHOL originalData320
def simplified320 := Pancake.PanLang.declToHOL simplifiedData320
end InitECandidate.Proofs.FrontendStages.Declarations
