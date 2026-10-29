import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify305
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body321_0 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte (Flapjack.Exp.var Flapjack.VarKind.local "dst") (Flapjack.Exp.const 128#64)

def body321_1 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 1#64)

def body321_2 : Prog (BitVec 64) :=
.seq body321_0 body321_1

def body321_3 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body321_4 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "to") (Flapjack.Exp.const 0#64)) body321_2 body321_3

def body321_5 : Prog (BitVec 64) :=
Flapjack.Prog.call none "rlp_encode_bytes"
  [Flapjack.Exp.var Flapjack.VarKind.local "dst", Flapjack.Exp.var Flapjack.VarKind.local "to",
    Flapjack.Exp.const 20#64]

def body321_6 : Prog (BitVec 64) :=
.seq body321_4 body321_5

def originalData321 : Decl (BitVec 64) :=
.function { name := "tx_put_to", inline := false, exported := false, params := [("dst", Flapjack.Shape.one), ("to", Flapjack.Shape.one)], body := body321_6, returnShape := (Flapjack.Shape.one) }
def simplifiedData321 : Decl (BitVec 64) :=
.function { name := "tx_put_to", inline := false, exported := false, params := [("dst", Flapjack.Shape.one), ("to", Flapjack.Shape.one)], body := body321_6, returnShape := (Flapjack.Shape.one) }
def original321 := Pancake.PanLang.declToHOL originalData321
def simplified321 := Pancake.PanLang.declToHOL simplifiedData321
end InitECandidate.Proofs.FrontendStages.Declarations
