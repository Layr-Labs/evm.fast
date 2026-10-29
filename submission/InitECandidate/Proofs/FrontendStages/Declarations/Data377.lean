import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify361
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body377_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.rStruct [Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64])

def body377_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body377_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "eq") (Flapjack.Exp.const 0#64)) body377_0 body377_1

def body377_3 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.load Flapjack.Shape.one (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "w")),
      Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add
          [Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "w"), Flapjack.Exp.const 8#64])])

def body377_4 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "w"))
  (Flapjack.Exp.const 0#64)) body377_3 body377_1

def body377_5 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "w"), none)) "htab_get"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bs", Flapjack.Exp.const 48#64]),
    Flapjack.Exp.var Flapjack.VarKind.local "code_hash"]

def body377_6 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "htab_set"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ts", Flapjack.Exp.const 40#64]),
    Flapjack.Exp.var Flapjack.VarKind.local "k", Flapjack.Exp.const 1#64]

def body377_7 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "c")

def body377_8 : Prog (BitVec 64) :=
.decCall ("c") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("ws_get_code") ([Flapjack.Exp.var Flapjack.VarKind.local "code_hash"]) body377_7

def body377_9 : Prog (BitVec 64) :=
.seq body377_6 body377_8

def body377_10 : Prog (BitVec 64) :=
.decCall ("k") (Flapjack.Shape.one) ("sk_make") ([Flapjack.Exp.var Flapjack.VarKind.local "addr", Flapjack.Exp.var Flapjack.VarKind.local "code_hash"]) body377_9

def body377_11 : Prog (BitVec 64) :=
.seq body377_4 body377_10

def body377_12 : Prog (BitVec 64) :=
.seq body377_5 body377_11

def body377_13 : Prog (BitVec 64) :=
.seq body377_4 body377_12

def body377_14 : Prog (BitVec 64) :=
.decCall ("w") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("htab_get") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ts", Flapjack.Exp.const 48#64]),
  Flapjack.Exp.var Flapjack.VarKind.local "code_hash"]) body377_13

def body377_15 : Prog (BitVec 64) :=
.seq body377_2 body377_14

def body377_16 : Prog (BitVec 64) :=
.decCall ("eq") (Flapjack.Shape.one) ("memeq") ([Flapjack.Exp.var Flapjack.VarKind.local "code_hash", Flapjack.Exp.var Flapjack.VarKind.global "empty_code_hash",
  Flapjack.Exp.const 32#64]) body377_15

def body377_17 : Prog (BitVec 64) :=
.seq body377_4 body377_5

def body377_18 : Prog (BitVec 64) :=
.seq body377_17 body377_4

def body377_19 : Prog (BitVec 64) :=
.seq body377_18 body377_10

def body377_20 : Prog (BitVec 64) :=
.decCall ("w") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("htab_get") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ts", Flapjack.Exp.const 48#64]),
  Flapjack.Exp.var Flapjack.VarKind.local "code_hash"]) body377_19

def body377_21 : Prog (BitVec 64) :=
.seq body377_2 body377_20

def body377_22 : Prog (BitVec 64) :=
.decCall ("eq") (Flapjack.Shape.one) ("memeq") ([Flapjack.Exp.var Flapjack.VarKind.local "code_hash", Flapjack.Exp.var Flapjack.VarKind.global "empty_code_hash",
  Flapjack.Exp.const 32#64]) body377_21

def originalData377 : Decl (BitVec 64) :=
.function { name := "get_code", inline := false, exported := false, params := [("code_hash", Flapjack.Shape.one), ("addr", Flapjack.Shape.one)], body := body377_16, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) }
def simplifiedData377 : Decl (BitVec 64) :=
.function { name := "get_code", inline := false, exported := false, params := [("code_hash", Flapjack.Shape.one), ("addr", Flapjack.Shape.one)], body := body377_22, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) }
def original377 := Pancake.PanLang.declToHOL originalData377
def simplified377 := Pancake.PanLang.declToHOL simplifiedData377
end InitECandidate.Proofs.FrontendStages.Declarations
