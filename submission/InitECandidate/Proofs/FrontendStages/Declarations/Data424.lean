import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify408
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body424_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "st_le64"
  [Flapjack.Exp.var Flapjack.VarKind.local "kb", Flapjack.Exp.var Flapjack.VarKind.global "bal_index"]

def body424_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "kb", Flapjack.Exp.const 8#64],
    Flapjack.Exp.var Flapjack.VarKind.local "addr", Flapjack.Exp.const 20#64]

def body424_2 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "kb", Flapjack.Exp.const 28#64],
    Flapjack.Exp.var Flapjack.VarKind.local "key", Flapjack.Exp.const 32#64]

def body424_3 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.load
    (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
    (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "m")))

def body424_4 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body424_5 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "m"))
  (Flapjack.Exp.const 0#64)) body424_3 body424_4

def body424_6 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.var Flapjack.VarKind.local "rec") (Flapjack.Exp.var Flapjack.VarKind.local "v")

def body424_7 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "htab_set"
  [Flapjack.Exp.var Flapjack.VarKind.global "bal_idx_stor", Flapjack.Exp.var Flapjack.VarKind.local "kb",
    Flapjack.Exp.var Flapjack.VarKind.local "rec"]

def body424_8 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "v")

def body424_9 : Prog (BitVec 64) :=
.seq body424_7 body424_8

def body424_10 : Prog (BitVec 64) :=
.seq body424_2 body424_9

def body424_11 : Prog (BitVec 64) :=
.seq body424_1 body424_10

def body424_12 : Prog (BitVec 64) :=
.seq body424_0 body424_11

def body424_13 : Prog (BitVec 64) :=
.seq body424_6 body424_12

def body424_14 : Prog (BitVec 64) :=
.decCall ("rec") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 32#64]) body424_13

def body424_15 : Prog (BitVec 64) :=
.decCall ("v") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("get_pre_tx_storage") ([Flapjack.Exp.var Flapjack.VarKind.local "addr", Flapjack.Exp.var Flapjack.VarKind.local "key"]) body424_14

def body424_16 : Prog (BitVec 64) :=
.seq body424_5 body424_15

def body424_17 : Prog (BitVec 64) :=
.decCall ("m") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("htab_get") ([Flapjack.Exp.var Flapjack.VarKind.global "bal_idx_stor", Flapjack.Exp.var Flapjack.VarKind.local "kb"]) body424_16

def body424_18 : Prog (BitVec 64) :=
.seq body424_2 body424_17

def body424_19 : Prog (BitVec 64) :=
.seq body424_1 body424_18

def body424_20 : Prog (BitVec 64) :=
.seq body424_0 body424_19

def body424_21 : Prog (BitVec 64) :=
.dec ("kb") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.global "bal_key_buf") body424_20

def body424_22 : Prog (BitVec 64) :=
.seq body424_0 body424_1

def body424_23 : Prog (BitVec 64) :=
.seq body424_22 body424_2

def body424_24 : Prog (BitVec 64) :=
.seq body424_6 body424_0

def body424_25 : Prog (BitVec 64) :=
.seq body424_24 body424_1

def body424_26 : Prog (BitVec 64) :=
.seq body424_25 body424_2

def body424_27 : Prog (BitVec 64) :=
.seq body424_26 body424_7

def body424_28 : Prog (BitVec 64) :=
.seq body424_27 body424_8

def body424_29 : Prog (BitVec 64) :=
.decCall ("rec") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 32#64]) body424_28

def body424_30 : Prog (BitVec 64) :=
.decCall ("v") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("get_pre_tx_storage") ([Flapjack.Exp.var Flapjack.VarKind.local "addr", Flapjack.Exp.var Flapjack.VarKind.local "key"]) body424_29

def body424_31 : Prog (BitVec 64) :=
.seq body424_5 body424_30

def body424_32 : Prog (BitVec 64) :=
.decCall ("m") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("htab_get") ([Flapjack.Exp.var Flapjack.VarKind.global "bal_idx_stor", Flapjack.Exp.var Flapjack.VarKind.local "kb"]) body424_31

def body424_33 : Prog (BitVec 64) :=
.seq body424_23 body424_32

def body424_34 : Prog (BitVec 64) :=
.dec ("kb") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.global "bal_key_buf") body424_33

def originalData424 : Decl (BitVec 64) :=
.function { name := "idx_start_storage", inline := false, exported := false, params := [("addr", Flapjack.Shape.one), ("key", Flapjack.Shape.one)], body := body424_21, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) }
def simplifiedData424 : Decl (BitVec 64) :=
.function { name := "idx_start_storage", inline := false, exported := false, params := [("addr", Flapjack.Shape.one), ("key", Flapjack.Shape.one)], body := body424_34, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) }
def original424 := Pancake.PanLang.declToHOL originalData424
def simplified424 := Pancake.PanLang.declToHOL simplifiedData424
end InitECandidate.Proofs.FrontendStages.Declarations
