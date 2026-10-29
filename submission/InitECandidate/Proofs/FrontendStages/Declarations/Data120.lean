import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify104
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body120_0 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64])

def body120_1 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "dst", Flapjack.Exp.var Flapjack.VarKind.local "i"])
  (Flapjack.Exp.var Flapjack.VarKind.local "v")

def body120_2 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "v"
  (Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "v") (Flapjack.Exp.const 8#64))

def body120_3 : Prog (BitVec 64) :=
.seq body120_1 body120_2

def body120_4 : Prog (BitVec 64) :=
.seq body120_0 body120_3

def body120_5 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.const 0#64) (Flapjack.Exp.var Flapjack.VarKind.local "i")) body120_4

def body120_6 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body120_7 : Prog (BitVec 64) :=
.seq body120_5 body120_6

def body120_8 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.local "n") body120_7

def body120_9 : Prog (BitVec 64) :=
.seq body120_0 body120_1

def body120_10 : Prog (BitVec 64) :=
.seq body120_9 body120_2

def body120_11 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.const 0#64) (Flapjack.Exp.var Flapjack.VarKind.local "i")) body120_10

def body120_12 : Prog (BitVec 64) :=
.seq body120_11 body120_6

def body120_13 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.local "n") body120_12

def originalData120 : Decl (BitVec 64) :=
.function { name := "rlp_put_be", inline := false, exported := false, params := [("dst", Flapjack.Shape.one), ("v", Flapjack.Shape.one), ("n", Flapjack.Shape.one)], body := body120_8, returnShape := (Flapjack.Shape.one) }
def simplifiedData120 : Decl (BitVec 64) :=
.function { name := "rlp_put_be", inline := false, exported := false, params := [("dst", Flapjack.Shape.one), ("v", Flapjack.Shape.one), ("n", Flapjack.Shape.one)], body := body120_13, returnShape := (Flapjack.Shape.one) }
def original120 := Pancake.PanLang.declToHOL originalData120
def simplified120 := Pancake.PanLang.declToHOL simplifiedData120
end InitECandidate.Proofs.FrontendStages.Declarations
