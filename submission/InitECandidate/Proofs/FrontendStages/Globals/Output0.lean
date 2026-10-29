import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data0
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody0_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "mem_init" []

def globalBody0_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "sha256_init" []

def globalBody0_2 : Prog (BitVec 64) :=
.seq globalBody0_0 globalBody0_1

def globalBody0_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "keccak_init" []

def globalBody0_4 : Prog (BitVec 64) :=
.seq globalBody0_2 globalBody0_3

def globalBody0_5 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "ssz_init" []

def globalBody0_6 : Prog (BitVec 64) :=
.seq globalBody0_4 globalBody0_5

def globalBody0_7 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "mpt_init" []

def globalBody0_8 : Prog (BitVec 64) :=
.seq globalBody0_6 globalBody0_7

def globalBody0_9 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "u256_ws_init" []

def globalBody0_10 : Prog (BitVec 64) :=
.seq globalBody0_8 globalBody0_9

def globalBody0_11 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "secp256k1_init" []

def globalBody0_12 : Prog (BitVec 64) :=
.seq globalBody0_10 globalBody0_11

def globalBody0_13 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "bn254_init" []

def globalBody0_14 : Prog (BitVec 64) :=
.seq globalBody0_12 globalBody0_13

def globalBody0_15 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "bls_precompiles_init" []

def globalBody0_16 : Prog (BitVec 64) :=
.seq globalBody0_14 globalBody0_15

def globalBody0_17 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "ripemd160_init" []

def globalBody0_18 : Prog (BitVec 64) :=
.seq globalBody0_16 globalBody0_17

def globalBody0_19 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "blake2_init" []

def globalBody0_20 : Prog (BitVec 64) :=
.seq globalBody0_18 globalBody0_19

def globalBody0_21 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "header_init" []

def globalBody0_22 : Prog (BitVec 64) :=
.seq globalBody0_20 globalBody0_21

def globalBody0_23 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "evm_init" []

def globalBody0_24 : Prog (BitVec 64) :=
.seq globalBody0_22 globalBody0_23

def globalBody0_25 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fork_init" []

def globalBody0_26 : Prog (BitVec 64) :=
.seq globalBody0_24 globalBody0_25

def globalBody0_27 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memzero"
  [Flapjack.Exp.var Flapjack.VarKind.local "z32", Flapjack.Exp.const 32#64]

def globalBody0_28 : Prog (BitVec 64) :=
Flapjack.Prog.call
  (some
    (some (Flapjack.VarKind.local, "si"),
      some
        ("SszErr", "err_code",
          Flapjack.Prog.decCall "n" Flapjack.Shape.one "serialize_result"
            [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.var Flapjack.VarKind.local "z32",
              Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64]
            (Flapjack.Prog.seq
              (Flapjack.Prog.seq
                (Flapjack.Prog.seq
                  (Flapjack.Prog.storeByte
                    (Flapjack.Exp.op Flapjack.BinOp.add
                      [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.var Flapjack.VarKind.local "n"])
                    (Flapjack.Exp.var Flapjack.VarKind.local "err_code"))
                  (Flapjack.Prog.call (some (none, none)) "output_write"
                    [Flapjack.Exp.var Flapjack.VarKind.local "out",
                      Flapjack.Exp.op Flapjack.BinOp.add
                        [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.const 1#64]]))
                (Flapjack.Prog.extCall "halt" Flapjack.Exp.baseAddr (Flapjack.Exp.const 0#64) Flapjack.Exp.baseAddr
                  (Flapjack.Exp.const 0#64)))
              (Flapjack.Prog.return (Flapjack.Exp.const 1#64))))))
  "decode_host_input" []

def globalBody0_29 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "htr_new_payload_request"
  [Flapjack.Exp.var Flapjack.VarKind.local "si", Flapjack.Exp.var Flapjack.VarKind.local "root"]

def globalBody0_30 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.var Flapjack.VarKind.local "n"])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 536#64]))

def globalBody0_31 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "output_write"
  [Flapjack.Exp.var Flapjack.VarKind.local "out",
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.const 1#64]]

def globalBody0_32 : Prog (BitVec 64) :=
.seq globalBody0_30 globalBody0_31

def globalBody0_33 : Prog (BitVec 64) :=
Flapjack.Prog.extCall "halt" Flapjack.Exp.baseAddr (Flapjack.Exp.const 0#64) Flapjack.Exp.baseAddr
  (Flapjack.Exp.const 0#64)

def globalBody0_34 : Prog (BitVec 64) :=
.seq globalBody0_32 globalBody0_33

def globalBody0_35 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody0_36 : Prog (BitVec 64) :=
.seq globalBody0_34 globalBody0_35

def globalBody0_37 : Prog (BitVec 64) :=
.decCall ("n") (Flapjack.Shape.one) ("serialize_result") ([Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.var Flapjack.VarKind.local "root",
  Flapjack.Exp.var Flapjack.VarKind.local "succ",
  Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "si", Flapjack.Exp.const 88#64]),
  Flapjack.Exp.const 5377#64]) globalBody0_36

def globalBody0_38 : Prog (BitVec 64) :=
.decCall ("succ") (Flapjack.Shape.one) ("verify_stateless_new_payload") ([Flapjack.Exp.var Flapjack.VarKind.local "si"]) globalBody0_37

def globalBody0_39 : Prog (BitVec 64) :=
.seq globalBody0_29 globalBody0_38

def globalBody0_40 : Prog (BitVec 64) :=
.decCall ("root") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 32#64]) globalBody0_39

def globalBody0_41 : Prog (BitVec 64) :=
.seq globalBody0_28 globalBody0_40

def globalBody0_42 : Prog (BitVec 64) :=
.dec ("err_code") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody0_41

def globalBody0_43 : Prog (BitVec 64) :=
.dec ("si") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody0_42

def globalBody0_44 : Prog (BitVec 64) :=
.seq globalBody0_27 globalBody0_43

def globalBody0_45 : Prog (BitVec 64) :=
.decCall ("z32") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 32#64]) globalBody0_44

def globalBody0_46 : Prog (BitVec 64) :=
.decCall ("out") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 256#64]) globalBody0_45

def globalBody0_47 : Prog (BitVec 64) :=
.seq globalBody0_26 globalBody0_46

def globalData0 : Decl (BitVec 64) :=
.function { name := "main'", inline := false, exported := false, params := [], body := globalBody0_47, returnShape := (Flapjack.Shape.one) }
def globalOutput0 := Pancake.PanLang.declToHOL globalData0
end InitECandidate.Proofs.FrontendStages.Declarations
